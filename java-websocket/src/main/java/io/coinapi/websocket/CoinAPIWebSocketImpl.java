package io.coinapi.websocket;

import com.dslplatform.json.DslJson;
import io.coinapi.websocket.exception.NotImplementedException;
import io.coinapi.websocket.interfaces.InvokeFunction;
import io.coinapi.websocket.model.*;
import org.glassfish.tyrus.client.ClientManager;

import javax.websocket.*;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.Optional;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

public class CoinAPIWebSocketImpl implements CoinAPIWebSocket {

    private final String sandboxUrl = "wss://ws-sandbox.coinapi.io/v1/";
    private final String noSandboxUrl = "wss://ws.coinapi.io/v1/";

    private Boolean isSandbox;
    private DslJson<Object> json = new DslJson<>();

    private static CountDownLatch latch;
    private ClientManager client;
    private Optional<Session> connection = Optional.empty();
    private Optional<Thread> processingMessages;

    private Queue messagesQueue = new LinkedBlockingDeque();

    private InvokeFunction tradesInvoke;
    private InvokeFunction quotesInvoke;
    private InvokeFunction bookInvoke;
    private InvokeFunction ohlcvInvoke;
    private InvokeFunction volumeInvoke;

    /**
     *
     * @param isSandbox
     */
    public CoinAPIWebSocketImpl(Boolean isSandbox) {

        this.isSandbox = isSandbox;
        client = ClientManager.createClient();

        Runnable task = () -> {
            while (true) {
                if (messagesQueue.size() > 0) {
                    String message = (String) messagesQueue.remove();
                    InputStream stream = new ByteArrayInputStream(message.getBytes());
                    try {
                        MessageBase type = json.deserialize(MessageBase.class, stream);
                        MessageTypeEnum messageType = MessageTypeEnum.valueOf(type.getType());
                        switch (messageType) {
                            case trade:
                                handle(message, Trades.class, tradesInvoke);
                                break;
                            case quote:
                                handle(message, Quotes.class, quotesInvoke);
                                break;
                            case book:
                            case book5:
                            case book20:
                            case book50:
                                handle(message, Book.class, bookInvoke);
                                break;
                            case ohlcv:
                                handle(message, OHLCV.class, ohlcvInvoke);
                                break;
                            case volume:
                                handle(message, Volume.class, volumeInvoke);
                                break;
                            case error:
                                System.out.println("error message: " + message);
                                break;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        processingMessages = Optional.of(new Thread(task));
    }

    /**
     *
     * @param hello
     * @throws IOException
     */
    @Override
    public void sendHelloMessage(Hello hello) throws IOException {

        processingMessages.get().start();

        ByteArrayOutputStream os = new ByteArrayOutputStream();
        json.serialize(hello, os);

        try {
            latch = new CountDownLatch(1);

            final ClientEndpointConfig cec = ClientEndpointConfig.Builder.create().build();

            connection = Optional.ofNullable(client.connectToServer(new Endpoint() {

                @Override
                public void onOpen(Session session, EndpointConfig config) {
                    try {
                        session.addMessageHandler(new MessageHandler.Whole<String>() {

                            @Override
                            public void onMessage(String message) {
                                messagesQueue.add(message);
                                latch.countDown();
                            }
                        });
                        session.getBasicRemote().sendText(os.toString());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                @Override
                public void onClose(Session session, CloseReason closeReason) {
                    super.onClose(session, closeReason);
                }
            }, cec, new URI(isSandbox ? sandboxUrl : noSandboxUrl)));
            latch.await(100, TimeUnit.SECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     *
     * @throws IOException
     */
    @Override
    public void closeConnect() throws IOException {

        if (connection.isPresent()) {
            connection.get().close();
            System.out.println("websocket connection closed");
        }

        if (processingMessages.isPresent() && processingMessages.get().isAlive()) {
            processingMessages.get().interrupt();
            System.out.println("processingMessage thread interrupt");
        }
    }

    /**
     *
     * @param function
     */
    @Override
    public void setTradesInvoke(InvokeFunction function) {
        this.tradesInvoke = function;
    }

    /**
     *
     * @param function
     */
    @Override
    public void setQuotesInvoke(InvokeFunction function) {
        this.quotesInvoke = function;
    }

    /**
     *
     * @param function
     */
    @Override
    public void setBookInvoke(InvokeFunction function) {
        this.bookInvoke = function;
    }

    /**
     *
     * @param function
     */
    @Override
    public void setOHLCVInvoke(InvokeFunction function) {
        this.ohlcvInvoke = function;
    }

    /**
     *
     * @param function
     */
    @Override
    public void setVolumeInvoke(InvokeFunction function) {
        this.volumeInvoke = function;
    }

    private void handle(String message, Class deserializeClass, InvokeFunction invokeFunction) throws IOException, NotImplementedException {

        Object deserialize = json.deserialize(deserializeClass, new ByteArrayInputStream(message.getBytes()));

        if (invokeFunction == null) {
            throw new NotImplementedException();
        }
        invokeFunction.preprocesMessages((MessageBase) deserialize);
    }

    @Override
    protected final void finalize() throws Throwable {
        super.finalize();
        closeConnect();
    }
}
