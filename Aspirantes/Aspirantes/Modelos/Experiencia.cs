using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspirantes.Modelos
{
    public class Experiencia
    {
        private int pregunta1;
        private int pregunta2;
        private int pregunta3;

        public int Pregunta1 { get => pregunta1; set => pregunta1 = value; }
        public int Pregunta2 { get => pregunta2; set => pregunta2 = value; }
        public int Pregunta3 { get => pregunta3; set => pregunta3 = value; }
    }
}