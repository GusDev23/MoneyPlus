﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Nom_usuario { get; set; }
        public string Contrasena { get; set; }
        public string Email { get; set; }
        public string imagenRuta { get; set; }
    }
}
