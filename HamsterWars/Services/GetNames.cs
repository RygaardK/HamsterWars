using DataAccessLibrary.Models;
namespace HamsterWars.Services
{
    public static class GetNames
    {
        public static HamsterModel GetCompetitorName(int ID, List<HamsterModel> allHamsters)
        {
            if (allHamsters.Any(i => i.ID == ID))
            {
                return allHamsters.Where(s => s.ID == ID).Single();
            }
            else
            {
                return new HamsterModel 
                {
                    Name = "Unknown"
                };
            }
        }
    }
}
