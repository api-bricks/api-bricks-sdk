package io.coinapi.websocket.model;

import com.dslplatform.json.CompiledJson;
import com.dslplatform.json.JsonAttribute;

@CompiledJson
public class Hello {

    private String type = "hello";
    private String apikey;
    private Boolean heartbeat = true;
    private String[] subscribeDataType;
    private String[] subscribeFilterSymbolId;
    private String[] subscribeFilterAssetId;
    private String[] subscribeFilterPeriodId;
    private String[] subscribeFilterExchangeId;
    private Integer subscribeUpdateLimitMsQuote;
    private Integer subscribeUpdateLimitMsBookSnapshot;

    public String getType() {
        return type;
    }

    public String getApikey() {
        return apikey;
    }

    public Boolean getHeartbeat() {
        return heartbeat;
    }

    @JsonAttribute(name = "subscribe_data_type")
    public String[] getSubscribeDataType() {
        return subscribeDataType;
    }

    @JsonAttribute(name = "subscribe_filter_symbol_id")
    public String[] getSubscribeFilterSymbolId() {
        return subscribeFilterSymbolId;
    }

    @JsonAttribute(name = "subscribe_filter_asset_id")
    public String[] getSubscribeFilterAssetId() {
        return subscribeFilterAssetId;
    }

    @JsonAttribute(name = "subscribe_filter_period_id")
    public String[] getSubscribeFilterPeriodId() {
        return subscribeFilterPeriodId;
    }

    @JsonAttribute(name = "subscribe_filter_exchange_id")
    public String[] getSubscribeFilterExchangeId() {
        return subscribeFilterExchangeId;
    }

    @JsonAttribute(name = "subscribe_update_limit_ms_quote")
    public Integer getSubscribeUpdateLimitMsQuote() {
        return subscribeUpdateLimitMsQuote;
    }

    @JsonAttribute(name = "subscribe_update_limit_ms_book_snapshot")
    public Integer getSubscribeUpdateLimitMsBookSnapshot() {
        return subscribeUpdateLimitMsBookSnapshot;
    }

    public void setApikey(String apikey) {
        this.apikey = apikey;
    }

    public void setHeartbeat(Boolean heartbeat) {
        this.heartbeat = heartbeat;
    }

    public void setSubscribeDataType(String[] subscribeDataType) {
        this.subscribeDataType = subscribeDataType;
    }

    public void setSubscribeFilterSymbolId(String[] subscribeFilterSymbolId) {
        this.subscribeFilterSymbolId = subscribeFilterSymbolId;
    }

    public void setSubscribeFilterAssetId(String[] subscribeFilterAssetId) {
        this.subscribeFilterAssetId = subscribeFilterAssetId;
    }

    public void setSubscribeFilterPeriodId(String[] subscribeFilterPeriodId) {
        this.subscribeFilterPeriodId = subscribeFilterPeriodId;
    }

    public void setSubscribeFilterExchangeId(String[] subscribeFilterExchangeId) {
        this.subscribeFilterExchangeId = subscribeFilterExchangeId;
    }

    public void setSubscribeUpdateLimitMsQuote(Integer subscribeUpdateLimitMsQuote) {
        this.subscribeUpdateLimitMsQuote = subscribeUpdateLimitMsQuote;
    }

    public void setSubscribeUpdateLimitMsBookSnapshot(Integer subscribeUpdateLimitMsBookSnapshot) {
        this.subscribeUpdateLimitMsBookSnapshot = subscribeUpdateLimitMsBookSnapshot;
    }
}
