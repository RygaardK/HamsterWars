using DataAccessLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary
{
    public class GamesData : IGamesData
    {
        private readonly ISqlDataAccess _db;
        public GamesData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<List<GamesModel>> GetGames()
        {
            string sql = "select * from dbo.Games";
            return _db.LoadData<GamesModel, dynamic>(sql, new { });
        }

        public Task InsertGame(GamesModel game)
        {
            string sql = @"INSERT INTO dbo.Games (HamsterID_1, HamsterID_2, Date, Winner)
                            VALUES (@HamsterID_1, @HamsterID_2, @Date, @Winner)";
            return _db.SaveData(sql, game);
        }
        public Task DeleteGame(GamesModel game)
        {
            string sql = $"DELETE FROM dbo.Games WHERE ID = {game.ID} ;";
            return _db.SaveData(sql, game);
        }

        // SKAPA NY METOD I SQLDATAACCESS MED ENDAST SQL QUERY
        //public Task HamsterBattleStatsUpdate(HamsterModel winner, HamsterModel loser)
        //{
        //    string sql = $"UPDATE Hamsters " +
        //                 $"SET Wins = Wins + 1, Games = Games + 1 " +
        //                 $"WHERE ID = { winner.ID }" +
        //                 $"UPDATE Hamsters SET Defeats = Defeats + 1," +
        //                 $"Games = Games + 1 WHERE ID = { loser.ID }";
        //    return _db.SaveDataQuery(sql);
        //}
    }
}

