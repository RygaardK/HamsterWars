using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public class ResultData : IResultData
    {
        private readonly ISqlDataAccess _db;
        public ResultData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<List<ResultModel>> GetGames()
        {
            string sql = "select * from dbo.Games";
            return _db.LoadData<ResultModel, dynamic>(sql, new { });
        }

        public Task InsertGame(ResultModel game)
        {
            string sql = $@"INSERT INTO dbo.Games (WinnerID, LooserID, Date)
                            VALUES (@WinnerID, @LooserID, {DateTime.Now})";
            return _db.SaveData(sql, game);
        }
        public Task DeleteGame(ResultModel game)
        {
            string sql = $"DELETE FROM dbo.Games WHERE ID = {game.ID} ;";
            return _db.SaveData(sql, game);
        }
    }
}

