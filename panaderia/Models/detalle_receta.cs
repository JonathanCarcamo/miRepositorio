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
    
    public partial class detalle_receta
    {
        public decimal cantidad { get; set; }
        public int recetaId { get; set; }
        public int productoId { get; set; }
        public short estado { get; set; }
        public int medidaId { get; set; }
    
        public virtual receta receta { get; set; }
        public virtual producto producto { get; set; }
        public virtual medida medida { get; set; }
    }
}
