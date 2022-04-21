using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IGamesData
    {
        Task DeleteGame(GamesModel game);
        Task<List<GamesModel>> GetGames();
        Task InsertGame(GamesModel game);
    }
}