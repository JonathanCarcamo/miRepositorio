//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace panaderia.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class familia
    {
        public familia()
        {
            this.producto = new HashSet<producto>();
        }
    
        public int Id { get; set; }
        public string nombre { get; set; }
        public System.DateTime creadoel { get; set; }
        public System.DateTime modificadoel { get; set; }
        public short estado { get; set; }
        public int lineaId { get; set; }
    
        public virtual linea linea { get; set; }
        public virtual ICollection<producto> producto { get; set; }
    }
}
