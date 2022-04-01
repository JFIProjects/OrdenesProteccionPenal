using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspirantes.Modelos
{
    public class Conocimientos
    {
        private int pregunta1;
        private string text1;        
        private int pregunta2;
        private string text2;        
        private int pregunta3;
        private string text3;

        public int Pregunta1 { get => pregunta1; set => pregunta1 = value; }
        public string Text1 { get => text1; set => text1 = value; }
        public int Pregunta2 { get => pregunta2; set => pregunta2 = value; }
        public string Text2 { get => text2; set => text2 = value; }
        public int Pregunta3 { get => pregunta3; set => pregunta3 = value; }
        public string Text3 { get => text3; set => text3 = value; }
    }
}