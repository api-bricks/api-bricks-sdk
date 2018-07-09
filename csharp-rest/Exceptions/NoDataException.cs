using System;
using System.Runtime.Serialization;

namespace csharp_rest.Exceptions
{
    public class NoDataException : CoinApiException
    {
        public NoDataException()
        {
        }

        public NoDataException(string message) : base(message)
        {
        }

        public NoDataException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected NoDataException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}