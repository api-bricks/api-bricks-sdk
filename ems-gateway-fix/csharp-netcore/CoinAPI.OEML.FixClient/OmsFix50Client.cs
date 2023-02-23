using CoinAPI.REST.V1;
using CoinAPI.REST.V1.DataModels;
using QuickFix;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace CoinAPI.OEML.FixClient
{


    public class OmsFix50Client : QuickFix.MessageCracker, QuickFix.IApplication
    {
        protected static CoinApiRestClient _coinApi;

        event EventHandler<QuickFix.FIX50.ExecutionReport> OnExecutionReport;
        public OmsFix50Client(CoinApiRestClient coinApi)
        {
            _coinApi = coinApi;
        }

        Session _session = null;
        #region IApplication
        public void FromApp(Message message, SessionID sessionID)
        {
            Console.WriteLine("CLIENT IN:  " + message);
            try
            {
                Crack(message, sessionID);

            }
            catch (Exception)
            {

            }
        }

        public void ToApp(Message message, SessionID sessionID)
        {
            Console.WriteLine("CLIENT OUT: " + message);
        }

        public void FromAdmin(Message message, SessionID sessionID) { }
        public void OnCreate(SessionID sessionID) { }
        public void OnLogout(SessionID sessionID) 
        {
            OnExecutionReport -= OmsFixClient_OnExecutionReport;
        }
        public void OnLogon(SessionID sessionID)
        {
            _session = Session.LookupSession(sessionID);
            OnExecutionReport += OmsFixClient_OnExecutionReport;
            MakeDealsRoutine();
        }
        private void OmsFixClient_OnExecutionReport(object sender, QuickFix.FIX50.ExecutionReport e)
        {
            Console.WriteLine("EXECUTION REPORT " + e);
        }

        private void MakeDealsRoutine()
        {
            var size_in_dollars = 20;
            var symbolPair = "BTCUSD";
            var symbolPairCoinapi = "GEMINI_SPOT_BTC_USD";
            var coinApiPrices = _coinApi.Quotes_current_data_symbol(symbolPairCoinapi);

            var clientOrderId = Guid.NewGuid().ToString();
            AddOrder("GEMINI", clientOrderId, symbolPair, true, size_in_dollars / coinApiPrices.ask_price, coinApiPrices.ask_price, ESymbolSource.EXCHANGE);

            clientOrderId = Guid.NewGuid().ToString();
            AddOrder("GEMINI", clientOrderId, symbolPairCoinapi, false, size_in_dollars / coinApiPrices.bid_price, coinApiPrices.bid_price, ESymbolSource.COINAPI);

            clientOrderId = Guid.NewGuid().ToString();

            var isBuy = true;

            AddOrder("GEMINI", clientOrderId, symbolPairCoinapi, isBuy, size_in_dollars / Math.Round((coinApiPrices.ask_price * 0.95M), 2), Math.Round(coinApiPrices.ask_price * 0.95M), ESymbolSource.COINAPI);
            OnExecutionReport += (s, e) =>
            {
                if (e.OrderID.getValue() == clientOrderId && e.OrdStatus.getValue() == '0') //new
                {
                    CancelOrder("GEMINI", clientOrderId, e.IsSetSecondaryOrderID() ? e.SecondaryOrderID.getValue() : null, "BTCUSD", isBuy);
                }
                if (e.OrderID.getValue() == clientOrderId && e.OrdStatus.getValue() == '8') //rejected
                {
                    isBuy = false;
                    clientOrderId = Guid.NewGuid().ToString();
                    AddOrder("GEMINI", clientOrderId, symbolPairCoinapi, isBuy, size_in_dollars / Math.Round((coinApiPrices.bid_price * 1.05M), 2), Math.Round(coinApiPrices.bid_price * 1.05M), ESymbolSource.COINAPI);
                }
            };
        }
        private void CancelOrder(string exchange, string clientOrderId, string exchangeOrderId, string symbol, bool isBuy)
        {
            var cancelOrder = new QuickFix.FIX50.OrderCancelRequest();
            cancelOrder.OrigClOrdID = new QuickFix.Fields.OrigClOrdID(clientOrderId);
            cancelOrder.ClOrdID = new QuickFix.Fields.ClOrdID(clientOrderId);
            if (exchangeOrderId != null)
                cancelOrder.OrderID = new QuickFix.Fields.OrderID(exchangeOrderId);
            cancelOrder.SecurityExchange = new QuickFix.Fields.SecurityExchange(exchange);
            cancelOrder.Side = new QuickFix.Fields.Side(isBuy ? '1' : '2');
            cancelOrder.Symbol = new QuickFix.Fields.Symbol(symbol);
            cancelOrder.TransactTime = new QuickFix.Fields.TransactTime(DateTime.Now.ToUniversalTime());
            SendMessage(cancelOrder);
        }

        private void AddOrder(string exchange, string orderId, string symbol, bool isBuy, decimal amount, decimal price, ESymbolSource symbolSource)
        {
            
            var newOrder = new QuickFix.FIX50.NewOrderSingle();

            newOrder.ClOrdID = new QuickFix.Fields.ClOrdID(orderId);
            //newOrder.ExecInst
            newOrder.ExDestination = new QuickFix.Fields.ExDestination(exchange);
            newOrder.Symbol = new QuickFix.Fields.Symbol(symbol);
            newOrder.SecurityID = new QuickFix.Fields.SecurityID(symbol);
            newOrder.SecurityIDSource = new QuickFix.Fields.SecurityIDSource(symbolSource.ToString("D"));
            newOrder.SecurityExchange = new QuickFix.Fields.SecurityExchange(exchange);
            newOrder.Side = new QuickFix.Fields.Side(isBuy ? '1' : '2'); //BUY : SELL
            newOrder.TransactTime = new QuickFix.Fields.TransactTime(DateTime.Now.ToUniversalTime());
            newOrder.OrderQty = new QuickFix.Fields.OrderQty(amount);
            newOrder.OrdType = new QuickFix.Fields.OrdType('2'); //LIMIT
            newOrder.Price = new QuickFix.Fields.Price(price);
            newOrder.TimeInForce = new QuickFix.Fields.TimeInForce('1'); //GTC
            newOrder.ClOrdLinkID = new QuickFix.Fields.ClOrdLinkID(orderId);
            //newOrder.ExpireTime //GTD
            SendMessage(newOrder);
        }

        public void ToAdmin(Message message, SessionID sessionID) { }

        #endregion

        public void OnMessage(QuickFix.FIX50.ExecutionReport n, SessionID s)
        {
            OnExecutionReport?.Invoke(this, n);

        }
        private void SendMessage(Message m)
        {
            if (_session != null)
            {
                _session.Send(m);
            }
            else
            {
                // This probably won't ever happen.
                Console.WriteLine("Can't send message: session not created.");
            }
        }

    }
}
