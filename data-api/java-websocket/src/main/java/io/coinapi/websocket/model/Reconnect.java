package io.coinapi.websocket.model;

import com.dslplatform.json.CompiledJson;
import com.dslplatform.json.JsonAttribute;

import java.time.OffsetDateTime;

@CompiledJson
public class Reconnect extends MessageBase {

    private Integer withinSeconds;
    private OffsetDateTime beforeTime;

    public Integer getWithinSeconds() { return withinSeconds; }

    @JsonAttribute(name = "within_seconds")
    public void setWithinSeconds(Integer withinSeconds) { this.withinSeconds = withinSeconds; }

    public OffsetDateTime getBeforeTime() { return beforeTime; }

    @JsonAttribute(name = "before_time")
    public void setBeforeTime(OffsetDateTime beforeTime) { this.beforeTime = beforeTime; }
}
