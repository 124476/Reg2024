﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBWorldSkillsRegNewEntities7 : DbContext
    {
        public DBWorldSkillsRegNewEntities7()
            : base("name=DBWorldSkillsRegNewEntities7")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Diagnozs> Diagnozs { get; set; }
        public virtual DbSet<Doctors> Doctors { get; set; }
        public virtual DbSet<Gospitals> Gospitals { get; set; }
        public virtual DbSet<Meropriations> Meropriations { get; set; }
        public virtual DbSet<Otdels> Otdels { get; set; }
        public virtual DbSet<Pacient> Pacient { get; set; }
        public virtual DbSet<Places> Places { get; set; }
        public virtual DbSet<Pols> Pols { get; set; }
        public virtual DbSet<Rapisan> Rapisan { get; set; }
        public virtual DbSet<Rechepts> Rechepts { get; set; }
        public virtual DbSet<Reesults> Reesults { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Tips> Tips { get; set; }
        public virtual DbSet<Yslovies> Yslovies { get; set; }
        public virtual DbSet<Zapic> Zapic { get; set; }
    }
}
