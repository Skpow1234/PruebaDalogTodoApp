using System.ComponentModel.DataAnnotations;

namespace TodoApp.Models
{
    public enum TodoStatus
    {
        Todo,
        Doing,
        Done
    }

    public class TodoItem
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public TodoStatus Status { get; set; }
    }
}