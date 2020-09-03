using System;
using System.Collections.Generic;
using System.Reflection.Metadata;
using System.Security.Cryptography;
using System.Text;

namespace CoinAPI.REST.V1.Example
{
    public class CheckResult
    {
        public CheckResult(string endpoint)
        {
            Endpoint = endpoint;
        }

        public bool Success { get; set; }
        public string Endpoint { get; set; }
        public string FailReason { get; set; }
    }

    public class EndpointsCheck
    {
        private CoinApiRestClient _coinApiClient;

        public Action<string> Log { get; set; }

        public EndpointsCheck(string apikey, bool sandbox = false)
        {
            _coinApiClient = new CoinApiRestClient(apikey, sandbox);
        }

        public EndpointsCheck(string apikey, string url)
        {
            _coinApiClient = new CoinApiRestClient(apikey, url);
        }

        public CheckResult AssetsWithIcons()
        {
            return HandleCheck(string.Empty, () =>
           {
               Log?.Invoke("Assets with icons");
               var assetsIcons = _coinApiClient.Metadata_list_assets_icons(32);
               foreach (var assetIcon in assetsIcons)
               {
                   Log?.Invoke($"asset id = {assetIcon.asset_id} iconUrl = {assetIcon.url}");
               }
               return true;
           });
        }

        public CheckResult ExchangesWithIcons()
        {
            return HandleCheck(string.Empty, () =>
            {
                Log?.Invoke("Exchanges with icons");
                var exhcangesIcons = _coinApiClient.Metadata_list_exchanges_icons(32);
                foreach (var exchaingeIcon in exhcangesIcons)
                {
                    Log?.Invoke($"exchange id = {exchaingeIcon.exchange_id} iconUrl = {exchaingeIcon.url}");
                }
                return true;
            });
        }

        public CheckResult Exchange()
        {
            return HandleCheck(string.Empty, () =>
            {
                Log?.Invoke("Exchange:");
                var exchange = _coinApiClient.Metadata_list_exchanges();
                foreach (var item in exchange)
                {
                    Log?.Invoke("exchange_id:" + item.exchange_id);
                    Log?.Invoke("website:" + item.website);
                    Log?.Invoke("name:" + item.name);
                    Log?.Invoke("volume_1day_usd:" + item.volume_1day_usd);
                    Log?.Invoke("volume_1hrs_usd:" + item.volume_1hrs_usd);
                    Log?.Invoke("volume_1mth_usd:" + item.volume_1mth_usd);
                    Log?.Invoke("--------------------------------------------------------------------------------------------------------");
                }
                return true;
            });
        }

        public CheckResult Asset()
        {
            return HandleCheck(string.Empty, () =>
            {
                Log?.Invoke("Asset:");
                var assets = _coinApiClient.Metadata_list_assets();
                foreach (var item in assets)
                {
                    Log?.Invoke("asset_id:" + item.asset_id);
                    Log?.Invoke("name:" + item.name);
                    Log?.Invoke("type_is_crypto:" + item.type_is_crypto);
                    Log?.Invoke("volume_1day_usd:" + item.volume_1day_usd);
                    Log?.Invoke("volume_1hrs_usd:" + item.volume_1hrs_usd);
                    Log?.Invoke("volume_1mth_usd:" + item.volume_1mth_usd);
                    Log?.Invoke("price_usd:" + item.price_usd);
                    Log?.Invoke("--------------------------------------------------------------------------------------------------------");
                }
                return true;
            });
        }


        private CheckResult HandleCheck(string endpoint, Func<bool> check)
        {
            var result = new CheckResult(endpoint);
            try
            {
                result.Success = check();
            }
            catch (Exception ex)
            {
                result.FailReason = ex.ToString();
                Log?.Invoke(result.FailReason);
            }
            return result;
        }


    }
}
