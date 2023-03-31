using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Egreso
    {
        public int ID { get; set; }
        public float Monto { get; set; }
        public string Descripcion { get; set; }
        public int Tipo { get; set; }
        public int Usuario { get; set; }
    }
}
