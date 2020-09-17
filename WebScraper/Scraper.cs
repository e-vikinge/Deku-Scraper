using HtmlAgilityPack;
using System;
using System.Drawing;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Media;
using DocumentFormat.OpenXml.Presentation;
using System.Windows.Forms;

namespace WebScraper
{
    
    class Scraper
    {
        private ObservableCollection<EntryModel> _entries = new ObservableCollection<EntryModel>();

        public ObservableCollection<EntryModel> Entries
        {
            get { return _entries; }
            set { _entries = value; }
        }
        public void ScrapeData(string page)
        {
            int rowNumber = 1;

            var web = new HtmlWeb();
            var doc = web.Load(page);

            var Articles = doc.DocumentNode.SelectNodes("//*[@class = 'position-relative']");

            ClearData();

            foreach (var article in Articles)
            {
                var gameTitle = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'h6 name']").InnerText.Trim());
                var originalPrice = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'text-muted']").InnerText.Trim());
                var salePrice = HttpUtility.HtmlDecode(article.SelectSingleNode("div").InnerText);
                var store = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'w-100']").InnerText.Trim());
                var link = HttpUtility.HtmlDecode(article.SelectSingleNode(".//a").Attributes["href"].Value);

                var linkDefault = "https://www.dekudeals.com";
                linkDefault += link; //without this we would not have a complete link
                var storeSingleLine = store.Replace("\n", " ").Trim(); //originaly everything was coming back on separate lines
                var storeSplitLine = storeSingleLine.Replace("  ", "\n").Trim();

                //Have to separate the original price from the sale price and return only the sale price
                List<string> wordlist = new List<string>();
                salePrice = salePrice.TrimStart('\n');
                wordlist = salePrice.Split('\n').ToList();
                wordlist.RemoveAt(0);
                salePrice = string.Join("", wordlist.ToArray());

                //pull it all together and populate our EntryModel
                _entries.Add(new EntryModel { ID = rowNumber, Game_Title = gameTitle, OriginalPrice = originalPrice, SalePrice = salePrice, Store = storeSplitLine, Link = linkDefault });
                
                rowNumber++;
            }
        }

        public void ClearData() 
        {
             _entries.Clear();
        }

    }

}
