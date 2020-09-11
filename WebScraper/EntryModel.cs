using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebScraper
{
    public class EntryModel
    {
        public int ID { get; set; }
        public string Image { get; set; }
        public string Game_Title { get; set; }
        public string OriginalPrice { get; set; }
        public string SalePrice { get; set; }
        public string Store { get; set; }
        public string Link { get; set; }

    }
}
