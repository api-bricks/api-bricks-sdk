namespace CoinAPI.REST.V1.Example
{
    public class EndpointCheckResult<T>
    {
        public CoinApiCheckStatusCode StatusCode { get; set; }
        public string Endpoint { get; set; }
        public T Data { get; set; }
    }
}
