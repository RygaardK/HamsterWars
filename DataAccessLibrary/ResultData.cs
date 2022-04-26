using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public class ResultData : IResultData
    {
        private readonly ISqlDataAccess _db;
        public ResultData(ISqlDataAccess db)
        {
            this._db = db;
        }
        public Task<List<ResultModel>> GetGames()// Gets ALL Games
        {
            string sql = "select * from dbo.Games";
            return _db.LoadData<ResultModel, dynamic>(sql, new { });
        }
        public Task InsertGame(ResultModel game)// Insert A Game
        {
            string sql = "INSERT INTO dbo.Games (WinnerID, LooserID, Date) VALUES (@WinnerID, @LooserID, GetDate())";
            return _db.SaveData(sql, game);
        }
        public Task DeleteGame(ResultModel game)// Delete A Game
        {
            string sql = $"DELETE FROM dbo.Games WHERE ID = @ID";
            return _db.SaveData(sql, game);
        }
    }
}

