using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace agencia.Models
{
    public class Passagem
    {
        [Key]
        public int Id_Passagem { get; set; }

        [Required]
        public int Quantidade { get; set; }
        [Required]
        public int Valor { get; set; }
    }
}
