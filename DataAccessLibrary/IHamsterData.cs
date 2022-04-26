using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IHamsterData
    {
        Task DeleteHamster(HamsterModel hamster);
        Task EditHamster(HamsterModel hamster);
        Task<List<HamsterModel>> GetHamsters();
        Task<List<HamsterModel>> GetStats(int topX, string orderBy);
        Task InsertHamster(HamsterModel hamster);
        Task UpdateWin(HamsterModel hamster);
        Task UpdateLoss(HamsterModel hamster);
    }
}