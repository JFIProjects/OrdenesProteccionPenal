using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspirantes.Modelos
{
    public class Formacion
    {
        private int materia;
        private List<int> pregunta2;
        private List<int> pregunta3;
        private List<int> pregunta4;
        private int pregunta5;

        public int Materia { get => materia; set => materia = value; }
        public List<int> Pregunta2 { get => pregunta2; set => pregunta2 = value; }
        public List<int> Pregunta3 { get => pregunta3; set => pregunta3 = value; }
        public List<int> Pregunta4 { get => pregunta4; set => pregunta4 = value; }
        public int Pregunta5 { get => pregunta5; set => pregunta5 = value; }
    }
}