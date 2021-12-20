using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace agencia.Models
{
    public class Contatos
    {
        [Key]
        public string Contato1 { get; set; }

        [Required]
        public string Contato2 { get; set; }
    }
}
