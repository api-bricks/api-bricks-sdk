package io.coinapi.websocket.model;

public enum MessageTypeEnum {
    trade,
    quote,
    book,
    book5,
    book20,
    book50,
    ohlcv,
    volume,
    hearbeat,
    error,
    reconnect
}
