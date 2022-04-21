using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class HamsterModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int MyProperty { get; set; }
        public int Age { get; set; }
        public string FavFood { get; set; }
        public string Loves { get; set; }
        public string ImgName { get; set; }
        public int Wins { get; set; }
        public int Losses { get; set; }
        public int Games { get; set; }
    }
}
