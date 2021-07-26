package types

// ApiVersion custom ENUM for SDK forward compatibility
type Version int

const (
	V1 Version = iota
)

// MessageType replicates the official incoming message types as (kinda) string enum.
// https://docs.coinapi.io/#messages
type MessageType string

const (
	SERVER_INFO                 MessageType = "SERVER_INFO"
	ORDER_NEW_SINGLE_REQUEST    MessageType = "ORDER_NEW_SINGLE_REQUEST"
	ORDER_CANCEL_SINGLE_REQUEST MessageType = "ORDER_CANCEL_SINGLE_REQUEST"
	ORDER_CANCEL_ALL_REQUEST    MessageType = "ORDER_CANCEL_ALL_REQUEST"
	ORDER_EXEC_REPORT_SNAPSHOT  MessageType = "ORDER_EXEC_REPORT_SNAPSHOT"
	ORDER_EXEC_REPORT_UPDATE    MessageType = "ORDER_EXEC_REPORT_UPDATE"
	BALANCE_SNAPSHOT            MessageType = "BALANCE_SNAPSHOT"
	BALANCE_UPDATE              MessageType = "BALANCE_UPDATE"
	POSITION_SNAPSHOT           MessageType = "POSITION_SNAPSHOT"
	POSITION_UPDATE             MessageType = "POSITION_UPDATE"
	SYMBOLS_SNAPSHOT            MessageType = "SYMBOLS_SNAPSHOT"
	MESSAGE_REJECT              MessageType = "MESSAGE_REJECT"
)
