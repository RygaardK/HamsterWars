using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IResultData
    {
        Task<List<ResultModel>> GetGames();
        Task InsertGame(ResultModel game);
        Task DeleteGame(ResultModel game);
    }
}