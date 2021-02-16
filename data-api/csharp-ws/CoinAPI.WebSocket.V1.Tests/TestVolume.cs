using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestVolume
    {
        [TestMethod]
        public void TestVolumeReceive()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "volume" }
            };

            using(var wsClient = new CoinApiWsClient(true))
            {
                var mre = new ManualResetEvent(false);
                wsClient.VolumeEvent += (s, i) =>
                {
                    mre.Set();
                    mssgCount++;
                };

                wsClient.SendHelloMessage(helloMsg);

                mre.WaitOne(TimeSpan.FromSeconds(50));
                Assert.AreNotEqual(0, mssgCount);
            }
        }

    }
}
