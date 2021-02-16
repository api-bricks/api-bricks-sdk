using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.IO.Compression;

namespace limitbook_full_l2
{
    class Program
    {
        public enum ELimitUpdateType
        {
            ADD,
            SET,
            SUB,
            SNAPSHOT,
            DELETE,
            MATCH
        }

        public static string dateFormat = "HH:mm:ss.fffffff";
        public static int bufferSize = 1 * 1024 * 1024; // 1MB

        static void Main(string[] args)
        {
            string path = args.Length > 0 ? args[0] : "4365242-COINBASE_SPOT_ETC_BTC.csv.gz";

            using (GZipStream gz = 
                new GZipStream(
                    new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.Read, bufferSize),
                    CompressionMode.Decompress))
            {
                using (StreamReader sr = new StreamReader(gz))
                {
                    ProcessReader(dateFormat, sr);
                }
            }
        }

        private static void ProcessReader(string dateFormat, StreamReader sr)
        {
            string line;
            var book = new Dictionary<(bool, decimal, string), decimal>();
            DateTime lastTimeExchange = DateTime.MinValue;
            ELimitUpdateType? prevType = null;

            // skip header
            sr.ReadLine();

            while ((line = sr.ReadLine()) != null)
            {
                // parse columns
                var columns = line.Split(new char[] { ';' });
                var time_exchange = DateTime.ParseExact(columns[0], dateFormat, CultureInfo.InvariantCulture);
                var time_coinapi = DateTime.ParseExact(columns[1], dateFormat, CultureInfo.InvariantCulture);
                var type = (ELimitUpdateType)Enum.Parse(typeof(ELimitUpdateType), columns[2]);
                var isSellAsk = int.Parse(columns[3]) == 0;
                var price = decimal.Parse(columns[4], NumberStyles.Float, CultureInfo.InvariantCulture);
                var size = decimal.Parse(columns[5], NumberStyles.Float, CultureInfo.InvariantCulture);
                var order_id = columns.Length > 6 ? columns[6] : "";

                // process snapshot book cleaning
                if (type == ELimitUpdateType.SNAPSHOT && prevType.HasValue && prevType.Value != ELimitUpdateType.SNAPSHOT)
                {
                    book.Clear();
                }
                prevType = type;

                // process specific order types
                if (type == ELimitUpdateType.SNAPSHOT || type == ELimitUpdateType.SET)
                {
                    book[(isSellAsk, price, order_id)] = size;
                }
                else if (type == ELimitUpdateType.ADD)
                {
                    if (!book.ContainsKey((isSellAsk, price, order_id)))
                    {
                        book[(isSellAsk, price, order_id)] = size;
                    }
                    else
                    {
                        book[(isSellAsk, price, order_id)] = book[(isSellAsk, price, order_id)] + size;
                    }
                }
                else if (type == ELimitUpdateType.SUB || type == ELimitUpdateType.DELETE || type == ELimitUpdateType.MATCH)
                {
                    if (!book.ContainsKey((isSellAsk, price, order_id)))
                    {
                        book[(isSellAsk, price, order_id)] = 0;
                    }
                    else
                    {
                        var newSize = book[(isSellAsk, price, order_id)] - size;
                        book[(isSellAsk, price, order_id)] = newSize >= 0 ? newSize : 0;
                    }
                }
                else
                {
                    throw new ArgumentException(nameof(type));
                }

                // remove empty levels
                if (book.ContainsKey((isSellAsk, price, order_id)) && book[(isSellAsk, price, order_id)] <= 0)
                {
                    book.Remove((isSellAsk, price, order_id));
                }

                // process book feed forward
                if (time_exchange > lastTimeExchange)
                {
                    ProcessOrderbook(time_exchange, time_coinapi, book);
                    lastTimeExchange = time_exchange;
                }
            }
        }

        private static void ProcessOrderbook(DateTime time_exchange, DateTime time_coinapi, Dictionary<(bool, decimal, string), decimal> book)
        {
            // processing work
            var recv_diff = time_coinapi - time_exchange;
            Console.WriteLine($"{time_exchange} (recv: {(int)recv_diff.TotalMilliseconds}): levels {book.Count}");
        }
    }
}
