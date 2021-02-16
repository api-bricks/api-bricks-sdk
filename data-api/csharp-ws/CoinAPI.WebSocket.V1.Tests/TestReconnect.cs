using CoinAPI.WebSocket.V1.DataModels;
using CoinAPI.WebSocket.V1.Testing;
using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Configuration;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestReconnections
    {
        [TestMethod]
        public void TestMessageReceivedAfterReconnect()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "quote", "trade" }
            };
            var timeout = TimeSpan.FromSeconds(10);

            using (var wsClient = new CoinApiWsClientReconnect(true))
            {
                wsClient.Error += (s, e) => Debug.WriteLine(e.Message);

                var mre = new ManualResetEvent(false);
                wsClient.TradeEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };
                wsClient.QuoteEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };

                wsClient.SendHelloMessage(helloMsg);
                if (!wsClient.ConnectedEvent.WaitOne(timeout))
                {
                    Assert.Fail("Connected not catched.");
                }

                for (int i = 0; i < 10; i++)
                {
                    mre.Reset();
                    mssgCount = 0;
                    mre.WaitOne(TimeSpan.FromSeconds(10));
                    Assert.AreNotEqual(0, mssgCount);

                    Task.Run(() => wsClient.ForceReconnectUsedOnlyTestPurpose());
                    if (!wsClient.ConnectedEvent.WaitOne(timeout))
                    {
                        Assert.Fail("Reconnected not catched.");
                    }
                }
            }
        }

        [TestMethod]
        public void TestSilenceReconnect()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "quote", "trade" },
                subscribe_filter_exchange_id = new string[] { "EXCHANGETHATDOESNOTEXISTS" }
            };

            using (var wsClient = new CoinApiWsClientNoHb(false))
            {
                var mre = new ManualResetEvent(false);
                wsClient.TradeEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };
                wsClient.QuoteEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };

                Task.Run(() => wsClient.SendHelloMessage(helloMsg));
                if (!wsClient.ConnectedEvent.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("Not connected ...");
                }

                for (int idx = 0; idx < 5; idx++)
                {
                    if (!wsClient.ConnectedEvent.WaitOne(TimeSpan.FromSeconds(30)))
                    {
                        Assert.Fail("He is not reconnecting...");
                    }
                    else
                    {
                        Debug.WriteLine($"Reconnected @ {DateTime.UtcNow}");
                    }
                }

                if (mre.WaitOne(TimeSpan.FromSeconds(1)))
                {
                    Assert.Fail("Received some message.");
                }

                Assert.AreEqual(0, mssgCount);
            }
        }

        [TestMethod]
        public void TestSilenceNoReconnect()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "quote", "trade" },
                subscribe_filter_exchange_id = new string[] { "EXCHANGETHATDOESNOTEXISTS" }
            };

            using (var wsClient = new CoinApiWsClient(false))
            {
                var mre = new ManualResetEvent(false);
                wsClient.TradeEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };
                wsClient.QuoteEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };

                Task.Run(() => wsClient.SendHelloMessage(helloMsg));
                if (!wsClient.ConnectedEvent.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("Not connected ...");
                }

                if (mre.WaitOne(TimeSpan.FromSeconds(10)))
                {
                    Assert.Fail("Received some message.");
                }

                if (wsClient.ConnectedEvent.WaitOne(TimeSpan.FromSeconds(30)))
                {
                    Assert.Fail("He is reconnecting...");
                }

                if (mre.WaitOne(TimeSpan.FromSeconds(1)))
                {
                    Assert.Fail("Received some message.");
                }

                Assert.AreEqual(0, mssgCount);
            }
        }
    }
}
