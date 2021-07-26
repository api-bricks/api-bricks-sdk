// Copyright (c) 2021. Marvin Friedrich Lars Hansen. All Rights Reserved. Contact: marvin.hansen@gmail.com

package web_socket

// WsHandler handle raw websocket message
type WsHandler func(message []byte)

// WsErrHandler handles raw websocket errors
type WsErrHandler func(err error)
