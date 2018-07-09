using System;
using System.Runtime.Serialization;

namespace csharp_rest.Exceptions
{
    public class CoinApiException : Exception
    {
        public CoinApiException()
        {
        }

        public CoinApiException(string message) : base(message)
        {
        }

        public CoinApiException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected CoinApiException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}