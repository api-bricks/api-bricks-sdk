import io.coinapi.websocket.CoinAPIWebSocket;
import io.coinapi.websocket.CoinAPIWebSocketImpl;
import io.coinapi.websocket.model.Hello;
import org.junit.Before;

import java.io.IOException;

public abstract class CoinAPISDKTest {

    protected String apikey;
    protected CoinAPIWebSocket coinAPIWebSocket;

    @Before
    public void configuration() throws IOException {
        Config config = new Config();
        apikey = config.getPropValues("coinapi_key");
        coinAPIWebSocket = new CoinAPIWebSocketImpl(true);
    }

    public Hello createHello(String type) {
        Hello hello = new Hello();
        hello.setApikey(apikey);
        hello.setSubscribeDataType(new String[]{type});
        return hello;
    }
}
