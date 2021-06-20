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
                case "0":
                case "book":
                    messageType = MessageType.book;
                    return true;
                case "1":
                case "book_l3":
                    messageType = MessageType.book_l3;
                    return true;
                case "2":
                case "hearbeat":
                    messageType = MessageType.hearbeat;
                    return true;
                case "3":
                case "hello":
                    messageType = MessageType.hello;
                    return true;
                case "4":
                case "quote":
                    messageType = MessageType.quote;
                    return true;
                case "5":
                case "trade":
                    messageType = MessageType.trade;
                    return true;
                case "6":
                case "volume":
                    messageType = MessageType.volume;
                    return true;
                case "7":
                case "ohlcv":
                    messageType = MessageType.ohlcv;
                    return true;
                case "8":
                case "error":
                    messageType = MessageType.error;
                    return true;
                case "9":
                case "exrate":
                    messageType = MessageType.exrate;
                    return true;
                case "10":
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
