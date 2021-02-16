package io.coinapi.websocket.model;

import com.dslplatform.json.CompiledJson;
import com.dslplatform.json.JsonAttribute;

import java.time.OffsetDateTime;
import java.util.List;

@CompiledJson
public class Book extends MessageBase {

    private String symbolId;
    private Integer sequence;
    private OffsetDateTime timeExchange;
    private OffsetDateTime timeCoinApi;
    private String isSnapshot = "true";
    private List<Asks> asks;
    private List<Bids> bids;

    public String getSymbolId() {
        return symbolId;
    }

    @JsonAttribute(name = "symbol_id")
    public void setSymbolId(String symbolId) {
        this.symbolId = symbolId;
    }

    public Integer getSequence() {
        return sequence;
    }

    public void setSequence(Integer sequence) {
        this.sequence = sequence;
    }

    public OffsetDateTime getTimeExchange() {
        return timeExchange;
    }

    @JsonAttribute(name = "time_exchange")
    public void setTimeExchange(OffsetDateTime timeExchange) {
        this.timeExchange = timeExchange;
    }

    public OffsetDateTime getTimeCoinApi() {
        return timeCoinApi;
    }

    @JsonAttribute(name = "time_coinapi")
    public void setTimeCoinApi(OffsetDateTime timeCoinApi) {
        this.timeCoinApi = timeCoinApi;
    }

    public Boolean getSnapshot() {
        return isSnapshot.equalsIgnoreCase("true");
    }

    @JsonAttribute(name = "is_snapshot")
    public void setSnapshot(String snapshot) {
        isSnapshot = snapshot;
    }

    public List<Asks> getAsks() {
        return asks;
    }

    public void setAsks(List<Asks> asks) {
        this.asks = asks;
    }

    public List<Bids> getBids() {
        return bids;
    }

    public void setBids(List<Bids> bids) {
        this.bids = bids;
    }
}
