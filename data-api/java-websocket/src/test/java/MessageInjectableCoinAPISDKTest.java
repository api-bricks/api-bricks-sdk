import io.coinapi.websocket.CoinAPIWebSocketImpl;
import io.coinapi.websocket.model.Hello;
import org.junit.Before;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingDeque;

public abstract class MessageInjectableCoinAPISDKTest {
    protected String apikey;
    protected CoinAPIWebSocketImpl coinAPIWebSocket;
    protected Queue messagesQueue;

    @Before
    public void configuration() throws IOException, NoSuchFieldException, IllegalAccessException {
        Config config = new Config();
        apikey = config.getPropValues("coinapi_key");

        //make private messagesQueue variable accessible for injecting messages during testing
        Field messagesQueueField = CoinAPIWebSocketImpl.class.getDeclaredField("messagesQueue");
        messagesQueueField.setAccessible(true);

        coinAPIWebSocket = new CoinAPIWebSocketImpl(true);

        //inject this public queue into the class
        Queue messagesQueueToSet = new LinkedBlockingDeque();
        messagesQueueField.set(coinAPIWebSocket, messagesQueueToSet);

        messagesQueue = messagesQueueToSet;
    }

    public Hello createHello(String type) {
        Hello hello = new Hello();
        hello.setApikey(apikey);
        hello.setSubscribeDataType(new String[]{type});
        return hello;
    }
}
