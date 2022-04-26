using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public class HamsterData : IHamsterData
    {
        private readonly ISqlDataAccess _db;
        public HamsterData(ISqlDataAccess db)
        {
            _db = db;
        }
        public Task<List<HamsterModel>> GetHamsters()//Fetches ALL (*) hamsters
        {
            string sql = "SELECT * FROM Hamsters";
            return _db.LoadData<HamsterModel, dynamic>(sql, new { });
        }
        public Task InsertHamster(HamsterModel hamster)//Inserts A hamster into DB.
        {
            string sql = $"INSERT INTO dbo.Hamsters (Name, Age, FavFood, Loves, ImgName) VALUES (@Name, @Age, @FavFood, @Loves, @ImgName)";
            return _db.SaveData(sql, hamster);
        }
        public Task EditHamster(HamsterModel hamster)//Edits A hamster from DB.
        {
            string sql = @"UPDATE dbo.Hamsters SET Name = @Name, Age = @Age,
                        FavFood = @FavFood, Loves = @Loves,
                        ImgName = @ImgName WHERE ID = @ID";
            return _db.SaveData(sql, hamster);
        }
        public Task DeleteHamster(HamsterModel hamster)//Deletes A hamster from DB.
        {
            string sql = $"DELETE FROM dbo.Hamsters WHERE ID = @ID";
            return _db.SaveData(sql, hamster);
        }
        public Task UpdateWin(HamsterModel hamsters)// Sets the Win for the hamster.
        {
            string sql = @"UPDATE dbo.Hamsters set Wins = @Wins +1, Games = @Games +1 WHERE ID = @ID ";
            return _db.SaveData(sql, hamsters);
        }
        public Task UpdateLoss(HamsterModel hamsters)// Sets the Loss for a Hamster
        {
            string sql = @"UPDATE dbo.Hamsters set Losses = @Losses + 1, Games = @Games +1 WHERE ID = @ID ";
            return _db.SaveData(sql, hamsters);
        }
        public Task<List<HamsterModel>> GetStats(int topX, string orderBy)//Generic select top from hamsters
        {
            string sql = $"select TOP {@topX} * from dbo.Hamsters ORDER BY {@orderBy} Desc";
            return _db.LoadData<HamsterModel, dynamic>(sql, new { });
        }
    }
}

