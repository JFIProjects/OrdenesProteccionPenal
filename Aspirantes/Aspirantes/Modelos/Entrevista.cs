using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aspirantes.Modelos
{
    public class Entrevista
    {
        private string nombre;
        private string fecnac;
        private string edad;
        private string edocivil;
        private string direccion;
        private string telfijo;
        private string telmovil;
        private string correo;
        private string licenciatura;
        private string universidad;
        private string periodos;
        private string promedio;

        public string Nombre { get => nombre; set => nombre = value; }
        public string Fecnac { get => fecnac; set => fecnac = value; }
        public string Edad { get => edad; set => edad = value; }
        public string Edocivil { get => edocivil; set => edocivil = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Telfijo { get => telfijo; set => telfijo = value; }
        public string Telmovil { get => telmovil; set => telmovil = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Licenciatura { get => licenciatura; set => licenciatura = value; }
        public string Universidad { get => universidad; set => universidad = value; }
        public string Periodos { get => periodos; set => periodos = value; }
        public string Promedio { get => promedio; set => promedio = value; }
    }
}