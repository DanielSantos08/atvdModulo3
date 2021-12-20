using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace agencia.Models
{
    public class Destinos
    {
        [Key]
        public int Id_Destino { get; set; }

        [Required]
        public string Nome_Destino { get; set; }

        [Required]
        public string Nome_Estado { get; set; }
    }
}
