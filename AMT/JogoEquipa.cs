//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AMT
{
    using System;
    using System.Collections.Generic;
    
    public partial class JogoEquipa : Jogo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public JogoEquipa()
        {
            this.Equipa1 = new HashSet<Equipa>();
            this.Equipa2 = new HashSet<Equipa>();
        }
    
        public int TorneioEquipaId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Equipa> Equipa1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Equipa> Equipa2 { get; set; }
        public virtual TorneioEquipa TorneioEquipa { get; set; }
    }
}
