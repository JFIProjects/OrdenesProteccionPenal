using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspirantes.Modelos
{
    public class Tribunal
    {
        private int trabajaTribunal;
        private string nombre;
        private List<int> pregunta3;
        private List<int> pregunta4;

        public int TrabajaTribunal { get => trabajaTribunal; set => trabajaTribunal = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public List<int> Pregunta3 { get => pregunta3; set => pregunta3 = value; }
        public List<int> Pregunta4 { get => pregunta4; set => pregunta4 = value; }
    }
}