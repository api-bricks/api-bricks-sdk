using System;

namespace CoinAPI.OEML.FixClient
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //OmsFix44Client application = new OmsFix44Client(new REST.V1.CoinApiRestClient("API_KEY"));
                OmsFix50Client application = new OmsFix50Client(new REST.V1.CoinApiRestClient("API_KEY"));

                QuickFix.SessionSettings settings = new QuickFix.SessionSettings("FixSettings.cfg");
                QuickFix.IMessageStoreFactory storeFactory = new QuickFix.FileStoreFactory(settings);
                QuickFix.ILogFactory logFactory = new QuickFix.ScreenLogFactory(settings);
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
    }
}
