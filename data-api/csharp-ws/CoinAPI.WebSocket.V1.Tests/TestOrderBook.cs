using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestOrderBook
    {
        [TestMethod]
        public void TestOrderBookReceive()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "book" },
                subscribe_filter_symbol_id = new string[] { "BITSTAMP_SPOT_BTC_USD", "GEMINI_SPOT_BTC_USD", "COINBASE_SPOT_BTC_USD" }
            };

            using(var wsClient = new CoinApiWsClient(true))
            {
                var mre = new ManualResetEvent(false);
                wsClient.OrderBookEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };

                wsClient.SendHelloMessage(helloMsg);

                mre.WaitOne(TimeSpan.FromSeconds(10));
                Assert.AreNotEqual(0, mssgCount);
            }
        }

    }
}
