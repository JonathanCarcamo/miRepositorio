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
    
    public partial class receta
    {
        public receta()
        {
            this.detalle_receta = new HashSet<detalle_receta>();
            this.produccion = new HashSet<produccion>();
        }
    
        public int Id { get; set; }
        public string nombre { get; set; }
        public short estado { get; set; }
    
        public virtual ICollection<detalle_receta> detalle_receta { get; set; }
        public virtual ICollection<produccion> produccion { get; set; }
    }
}
