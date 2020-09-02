import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

public class ErrorTest extends CoinAPISDKTest {

    @Test
    public void getErrorMessage() throws IOException, InterruptedException {

        AtomicReference<Integer> msgCount = new AtomicReference<>(0);

        coinAPIWebSocket.setErrorInvoke(message -> {
            msgCount.getAndSet(msgCount.get() + 1);
        });
        coinAPIWebSocket.sendHelloMessage(createHello("invalid_type"));

        Thread.sleep(10000);
        System.out.println("processing " + msgCount.get() + " error message");

        coinAPIWebSocket.closeConnect();
        Assert.assertNotEquals(0, msgCount.get().intValue());
    }
}
