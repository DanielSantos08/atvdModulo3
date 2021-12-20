
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace agencia.Models
{
    public class NewCliente
    {
        [Key]
        public int Id_Cliente { get; set; }

        [Required]
        public string Nome_Cliente { get; set; }

        [Required]
        public string CPF_Cliente { get; set; }

    }
}