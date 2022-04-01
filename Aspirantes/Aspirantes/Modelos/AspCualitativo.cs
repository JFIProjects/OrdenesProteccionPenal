using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspirantes.Modelos
{
    public class AspCualitativo
    {
        private int aspecto;
        private int formaExp;
        private int interes;
        private int actitud;
        private int elemAfecta;

        public int Aspecto { get => aspecto; set => aspecto = value; }
        public int FormaExp { get => formaExp; set => formaExp = value; }
        public int Interes { get => interes; set => interes = value; }
        public int Actitud { get => actitud; set => actitud = value; }
        public int ElemAfecta { get => elemAfecta; set => elemAfecta = value; }
    }
}