using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class GamesModel
    {
        public int ID { get; set; }
        public int HamsterID_1 { get; set; }
        public int HamsterID_2 { get; set; }
        public DateTime DateOfGame { get; set; }
        public int Winner { get; set; }

    }
}
