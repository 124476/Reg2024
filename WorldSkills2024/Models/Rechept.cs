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
    
    public partial class Rechept
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Doza { get; set; }
        public string Format { get; set; }
        public Nullable<int> PlacesId { get; set; }
    
        public virtual Places Places { get; set; }
    }
}
