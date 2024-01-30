//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WorldSkills2024.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Places
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Places()
        {
            this.Rechept = new HashSet<Rechept>();
        }
    
        public int Id { get; set; }
        public Nullable<int> PacientId { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<int> TipId { get; set; }
        public string Result { get; set; }
        public string Recomendation { get; set; }
        public Nullable<int> DoctorId { get; set; }
        public string Money { get; set; }
    
        public virtual Doctor Doctor { get; set; }
        public virtual Meropriation Meropriation { get; set; }
        public virtual Pacient Pacient { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rechept> Rechept { get; set; }
    }
}
