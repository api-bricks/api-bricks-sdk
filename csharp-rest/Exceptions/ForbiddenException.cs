using System;
using System.Runtime.Serialization;

namespace csharp_rest.Exceptions
{
    public class ForbiddenException : CoinApiException
    {
        public ForbiddenException()
        {
        }

        public ForbiddenException(string message) : base(message)
        {
        }

        public ForbiddenException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected ForbiddenException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}