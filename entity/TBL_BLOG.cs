//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace diziYorumSitesi.entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_BLOG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_BLOG()
        {
            this.TBL_YORUMLAR = new HashSet<TBL_YORUMLAR>();
        }
    
        public int BLOGID { get; set; }
        public string BLOGBASLIK { get; set; }
        public string BLOGICERIK { get; set; }
        public Nullable<System.DateTime> BLOGTARIH { get; set; }
        public string BLOGGORSEL { get; set; }
        public Nullable<byte> BLOGTUR { get; set; }
        public Nullable<byte> BLOGKATEGORI { get; set; }
    
        public virtual TBL_KATEGORI TBL_KATEGORI { get; set; }
        public virtual TBL_TUR TBL_TUR { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_YORUMLAR> TBL_YORUMLAR { get; set; }
    }
}
