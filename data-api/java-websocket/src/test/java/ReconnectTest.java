import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

public class ReconnectTest extends MessageInjectableCoinAPISDKTest {

    @Test
    public void getReconnectMessages() throws IOException, InterruptedException {

        AtomicReference<Integer> msgCount = new AtomicReference<>(0);

        coinAPIWebSocket.setOHLCVInvoke(message -> {
            //stub invoke to allow connection
        });

        coinAPIWebSocket.setReconnectInvoke(message -> {
            msgCount.getAndSet(msgCount.get() + 1);
        });

        coinAPIWebSocket.sendHelloMessage(createHello("ohlcv"));

        String message = "{" +
                "\"type\": \"reconnect\"," +
                "\"within_seconds\": 10," +
                "\"before_time\": \"2020-08-06T19:19:09.7035429Z\"" +
                "}";

        //inject reconnect message into exposed queue
        messagesQueue.add(message);

        Thread.sleep(10000);
        System.out.println("processing " + msgCount.get() + " reconnect messages");

        coinAPIWebSocket.closeConnect();
        Assert.assertEquals(1, msgCount.get().intValue());
    }
}
