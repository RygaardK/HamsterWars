using System.ComponentModel.DataAnnotations;

namespace DataAccessLibrary.Models
{
    public class HamsterModel
    {
        public int ID { get; set; }
        [Required]
        [StringLength(16, ErrorMessage = "String too long (16 character limit) for a Hamster's Name.")]
        public string Name { get; set; }
        [Required]
        [Range(1, 100000, ErrorMessage = "Age invalid (1-100000).")]
        public int Age { get; set; }
        [Required]
        [MinLength(3, ErrorMessage = "String too short (3 character minimum) for a Hamster's Food.")]
        public string FavFood { get; set; }
        [Required]
        [MinLength(3, ErrorMessage = "String too short (3 character minimum) for a Hamster's Activity.")]
        public string Loves { get; set; }
        public string ImgName { get; set; } = "404hamster.jpg";
        public int Wins { get; set; }
        public int Losses { get; set; }
        public int Games { get; set; }
    }
}
