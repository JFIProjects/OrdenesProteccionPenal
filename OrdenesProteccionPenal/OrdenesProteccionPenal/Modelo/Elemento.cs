using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OrdenesProteccionPenal.Modelo
{
    [Serializable]
    public class Elemento
    {
        private DateTime fecha;
        private String idResultado;
        private String resultado;

        public DateTime Fecha { get => fecha; set => fecha = value; }
        public string IdResultado { get => idResultado; set => idResultado = value; }
        public string Resultado { get => resultado; set => resultado = value; }
    }
}