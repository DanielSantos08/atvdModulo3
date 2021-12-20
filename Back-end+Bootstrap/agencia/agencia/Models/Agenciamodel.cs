using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace agencia.Models
{
    public class Agenciamodel
    {
        [Key]
        public string CNPJ_Agencia { get; set; }

        [Required]
        public string Nome_Agencia { get; set; }
    }
}
