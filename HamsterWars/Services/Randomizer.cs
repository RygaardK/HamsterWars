using DataAccessLibrary.Models;

namespace HamsterWars.Services
{
    public static class Randomizer
    {
        public static (HamsterModel, HamsterModel) GetCompetitor(List<HamsterModel> hamsters)
        {
            Random random = new Random();

            HamsterModel hamster1 = hamsters[random.Next(0, hamsters.Count)];
            HamsterModel hamster2 = hamsters[random.Next(0, hamsters.Count)];
                
            while (hamster1.ID == hamster2.ID)
            {
                hamster2 = hamsters[random.Next(0, hamsters.Count)];
            }
            return (hamster1, hamster2);
        }
    }
}