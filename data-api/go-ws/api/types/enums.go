package types

// ApiVersion custom ENUM for SDK forward compatibility
type ApiVersion int

const (
	ApiV1 ApiVersion = iota
)

// EnvironmentType
// https://docs.coinapi.io/#endpoints-2
type EnvironmentType int

const (
	ProdEncrypted EnvironmentType = iota
	ProdInsecure
	TestEncrypted
	TestInsecure
)

// MessageType replicates the official incoming message types as (kinda) string enum.
// https://docs.coinapi.io/#messages
type MessageType string

const (
	TRADE          MessageType = "trade"
	QUOTE          MessageType = "quote"
	BOOK_L2_FULL   MessageType = "book"    // Orderbook L2 (Full)
	BOOK_L2_TOP_5  MessageType = "book5"   // Orderbook L2 (5 best Bid / Ask)
	BOOK_L2_TOP_20 MessageType = "book20"  // Orderbook L2 (20 best Bid / Ask)
	BOOK_L2_TOP_50 MessageType = "book50"  // Orderbook L2 (50 best Bid / Ask)
	BOOK_L3_FULL   MessageType = "book_l3" // Orderbook L3 (Full) https://docs.coinapi.io/#orderbook-l3-full-in
	OHLCV          MessageType = "ohlcv"
	VOLUME         MessageType = "volume"
	HEARTBEAT      MessageType = "hearbeat" // DO NOT FIX! it's a typo in the official msg spec!
	ERROR          MessageType = "error"    // Otherwise processMessage(.) fails to handle heartbeat messages!
	EXCHANGERATE   MessageType = "exrate"
	RECONNECT      MessageType = "reconnect"
)

// ReconnectType defines the reconnect behavior upon receiving a reconnect message
// https://docs.coinapi.io/#reconnect-in
type ReconnectType int

const (
	OnConnectionClose ReconnectType = iota
	OnReconnectMessage
)
