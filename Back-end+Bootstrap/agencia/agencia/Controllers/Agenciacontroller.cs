using agencia.Data;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace agencia.Controllers
{
    public class Agenciacontroller : Controller
    {
        private readonly Agenciacontext _context;
        public Agenciacontroller(Agenciacontext context)
        {
            _context = context;
        }
    }
}
