package types

type OemlMessage struct {
	BalanceSnapshot              *Balance
	BalanceUpdate                *Balance
	MessageType                  *MessageType
	OrderExecutionReportSnapshot *OrderExecutionReport
	OrderExecutionReportUpdate   *OrderExecutionReport
	PositionSnapshot             *Position
	PositionUpdate               *Position
	ServerInfo                   *ServerInfo
	SymbolSnapshot               *Symbols
	MessageReject                *MessageReject
}
