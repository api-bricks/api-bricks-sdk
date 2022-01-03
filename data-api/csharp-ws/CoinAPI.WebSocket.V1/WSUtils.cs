using System;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.IO;
using CoinAPI.WebSocket.V1.DataModels;
using Utf8Json;

namespace CoinAPI.WebSocket.V1
{
    internal static class WSUtils
    {

        internal async static Task<MessageData> ReceiveMessage(
            System.Net.WebSockets.WebSocket webSocket, 
            CancellationToken ct,
            byte[] bufferArray,
            long maxSize = long.MaxValue)
        {
            ArraySegment<Byte> buffer = new ArraySegment<byte>(bufferArray);
            WebSocketReceiveResult result = null;

            using (var ms = new MemoryStream())
            {
                do
                {
                    result = await webSocket.ReceiveAsync(buffer, ct);
                    ms.Write(buffer.Array, buffer.Offset, result.Count);
                    if (ms.Length > maxSize)
                    {
                        throw new InvalidOperationException("Maximum size of the message was exceeded.");
                    }
                }
                while (!result.EndOfMessage);

                ms.Seek(0, SeekOrigin.Begin);

                return new MessageData
                {
                    Data = ms.ToArray(),
                    MessageType = result.MessageType
                };
            }
        }

        public static T ParseMessage<T>(MessageData messageData)
        {
            var jsonString = Encoding.ASCII.GetString(messageData.Data);
            var messageObject = JsonSerializer.Deserialize<T>(jsonString);

            return messageObject;
        }

        public static async Task SendMessage(ArraySegment<byte> data,
            System.Net.WebSockets.WebSocket webSocket)
        {
            await webSocket.SendAsync(data, WebSocketMessageType.Text,
                endOfMessage: true,
                cancellationToken: CancellationToken.None);
        }

        public static bool TryParse(this string messageTypeStr, out MessageType messageType)
        {
            switch (messageTypeStr)
            {
                case "book":
                    messageType = MessageType.book;
                    return true;
                case "book5":
                    messageType = MessageType.book5;
                    return true;
                case "book20":
                    messageType = MessageType.book20;
                    return true;
                case "book50":
                    messageType = MessageType.book50;
                    return true;
                case "book_l3":
                    messageType = MessageType.book_l3;
                    return true;
                case "hearbeat":
                    messageType = MessageType.hearbeat;
                    return true;
                case "hello":
                    messageType = MessageType.hello;
                    return true;
                case "quote":
                    messageType = MessageType.quote;
                    return true;
                case "trade":
                    messageType = MessageType.trade;
                    return true;
                case "volume":
                    messageType = MessageType.volume;
                    return true;
                case "ohlcv":
                    messageType = MessageType.ohlcv;
                    return true;
                case "error":
                    messageType = MessageType.error;
                    return true;
                case "exrate":
                    messageType = MessageType.exrate;
                    return true;
                case "ticker":
                    messageType = MessageType.ticker;
                    return true;
                default:
                    messageType = MessageType.error;
                    return false;
            }
        }
    }
}
