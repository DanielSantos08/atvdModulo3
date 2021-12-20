using agencia.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace agencia.Data
{
    public class Agenciacontext : DbContext
    {
        public Agenciacontext (DbContextOptions<Agenciacontext> opt) : base(opt)
        {

        }
        public DbSet<NewCliente> Clientes { get; set; }
        public DbSet<Destinos> Destinos { get; set; }
        public DbSet<Contatos> Contatos { get; set; }
        public DbSet<Agenciamodel> MyAgencia { get; set; }
        public DbSet<Passagem> Passagens { get; set; }
    }
}
