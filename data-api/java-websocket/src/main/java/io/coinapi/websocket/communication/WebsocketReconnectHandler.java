package io.coinapi.websocket.communication;

import jakarta.websocket.CloseReason;
import org.glassfish.tyrus.client.ClientManager;

public class WebsocketReconnectHandler extends ClientManager.ReconnectHandler {

    @Override
    public boolean onDisconnect(CloseReason closeReason) {
        System.out.println("The connection has been closed (Code: {" + closeReason.getCloseCode() + "}, Reason: {" +
                closeReason.getReasonPhrase() + "}).");

        if (closeReason.getCloseCode().equals(CloseReason.CloseCodes.CANNOT_ACCEPT)) {
            return false;
        }
        return true;
    }

    @Override
    public boolean onConnectFailure(Exception exception) {
        System.out.println("The connection has been closed due to a failure.");
        System.out.println("Reason: " + exception);

        // Do not reconnect in case of failure. The CommunicationHandler will
        // take care of changing the node and establishing a new connection.
        return false;
    }

    @Override
    public long getDelay() {
        return 5L;
    }
}
