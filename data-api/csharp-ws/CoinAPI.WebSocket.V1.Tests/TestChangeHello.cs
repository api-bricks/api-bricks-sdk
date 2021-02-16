using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestChangeHello
    {
        [TestMethod]
        public void TestTradesReceive()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "trade", "quote" },
                subscribe_filter_exchange_id = new string[] { "COINBASE" }
            };

            using(var wsClient = new CoinApiWsClient(true))
            {
                var mre_bs = new ManualResetEvent(false);
                var mre_cb = new ManualResetEvent(false);
                wsClient.TradeEvent += (s, i) =>
                {
                    if (i.symbol_id.StartsWith("GEMINI"))
                    {
                        mre_cb.Set();
                    }
                    else if (i.symbol_id.StartsWith("COINBASE"))
                    {
                        mre_bs.Set();
                    }
                };
                wsClient.QuoteEvent += (s, i) =>
                {
                    if (i.symbol_id.StartsWith("GEMINI"))
                    {
                        mre_cb.Set();
                    }
                    else if (i.symbol_id.StartsWith("COINBASE"))
                    {
                        mre_bs.Set();
                    }
                };

                // BITSTAMP
                wsClient.SendHelloMessage(helloMsg);

                if (!wsClient.ConnectedEvent.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("should connect");
                }

                if (!mre_bs.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("bistamp should be");
                }

                if (mre_cb.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("coinbase should not");
                }

                // coinbase hello
                helloMsg = new Hello()
                {
                    apikey = System.Guid.Parse(config["TestApiKey"]),
                    subscribe_data_type = new string[] { "trade", "quote" },
                    subscribe_filter_exchange_id = new string[] { "GEMINI" }
                };

                wsClient.SendHelloMessage(helloMsg);

                // received for coinbase - change of hello
                mre_cb.Reset();

                if (!mre_cb.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("dont received for coinbase");
                }

                mre_bs.Reset();

                if (mre_bs.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("received for bitstapm after coinbase");
                }


            }
        }

    }
}
