using QuickFix;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace COINAPI.FIX.V2
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            try
            {
                QuickFix.SessionSettings settings = new QuickFix.SessionSettings("config_nossl.cfg");
                MarketDataApp application = new MarketDataApp();
                QuickFix.IMessageStoreFactory storeFactory = new QuickFix.FileStoreFactory(settings);
                QuickFix.ILogFactory logFactory = new FileLogFactory(settings);
                QuickFix.Transport.SocketInitiator initiator = new QuickFix.Transport.SocketInitiator(application, storeFactory, settings, logFactory);
                initiator.Start();

                System.Threading.Thread.Sleep(Int32.MaxValue);
            }
            catch (System.Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine(e.StackTrace);
                Console.ReadLine();
            }
            Environment.Exit(1);
        }

        public class NullLogFactory : ILogFactory
        {

            #region LogFactory Members

            public NullLogFactory(SessionSettings settings)
            { }

            public ILog Create(SessionID sessionID)
            {
                return new QuickFix.NullLog();
            }

            #endregion
        }
    }
}
