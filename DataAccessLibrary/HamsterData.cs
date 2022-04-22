using DataAccessLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary
{
    public class HamsterData : IHamsterData
    {
        private readonly ISqlDataAccess _db;
        public HamsterData(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<List<HamsterModel>> GetHamsters()
        {
            string sql = "SELECT * FROM Hamsters";  
            return _db.LoadData<HamsterModel, dynamic>(sql, new { });
        }

        public Task InsertHamster(HamsterModel hamster)
        {
            string sql = @"INSERT INTO dbo.Hamsters (Name, Age, FavFood, Loves, ImageName)
                            VALUES (@Name, @Age, @FavFood, @Loves, @ImageName)";
            return _db.SaveData(sql, hamster);
        }
        public Task EditHamster(HamsterModel hamster)
        {
            string sql = @$"UPDATE dbo.Hamsters SET Name = {hamster.Name}, Age = {hamster.Age},
                        FavFood = {hamster.FavFood}, Loves = {hamster.Loves},
                        ImgName = {hamster.ImgName} WHERE ID = {hamster.ID}; ";
            return _db.SaveData(sql, hamster);
        }
        public Task DeleteHamster(HamsterModel hamster)
        {
            string sql = $"DELETE FROM dbo.Hamster WHERE ID = {hamster.ID} ;";
            return _db.SaveData(sql, hamster);
        }
        public Task UpdateWin(HamsterModel winner)
        {
            string sql = @$"UPDATE dbo.Hamsters SET Wins = {winner.Wins}+1, Games = {winner.Games}+1;";
            return _db.SaveData(sql, winner);
        }  
        public Task UpdateLoss(HamsterModel loser)
        {
            string sql = @$"UPDATE dbo.Hamsters SET Losses = {loser.Losses}+1, Games = {loser.Games}+1;";
            return _db.SaveData(sql, loser);
        }
    }
}

