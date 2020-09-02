package io.coinapi.websocket;

import io.coinapi.websocket.interfaces.InvokeFunction;
import io.coinapi.websocket.model.Hello;

import java.io.IOException;

public interface CoinAPIWebSocket {

    void sendHelloMessage(Hello hello) throws IOException;
    void closeConnect() throws IOException;

    void setTradesInvoke(InvokeFunction function);
    void setQuotesInvoke(InvokeFunction function);
    void setBookInvoke(InvokeFunction function);
    void setOHLCVInvoke(InvokeFunction function);
    void setVolumeInvoke(InvokeFunction function);
    void setErrorInvoke(InvokeFunction function);
}
