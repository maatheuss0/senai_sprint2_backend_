using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using senai_HROADS_webAPI.Domains;

#nullable disable

namespace senai_HROADS_webAPI.Contexts
{
    public partial class HROADSContext : DbContext
    {
        public HROADSContext()
        {
        }

        public HROADSContext(DbContextOptions<HROADSContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Classe> Classes { get; set; }
        public virtual DbSet<Classehabilidade> Classehabilidades { get; set; }
        public virtual DbSet<Habilidade> Habilidades { get; set; }
        public virtual DbSet<Personagem> Personagems { get; set; }
        public virtual DbSet<Tipohabilidade> Tipohabilidades { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=NOTE0113A5\\SQLEXPRESS; initial catalog=SENAI_HROADS_MANHA; user Id=sa; pwd=Senai@132;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Latin1_General_CI_AS");

            modelBuilder.Entity<Classe>(entity =>
            {
                entity.HasKey(e => e.IdClasse)
                    .HasName("PK__CLASSE__60FFF8015FDB5261");

                entity.ToTable("CLASSE");

                entity.HasIndex(e => e.NomeC, "UQ__CLASSE__F76AAB26F12304C6")
                    .IsUnique();

                entity.Property(e => e.IdClasse)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("idClasse");

                entity.Property(e => e.NomeC)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("nomeC");
            });

            modelBuilder.Entity<Classehabilidade>(entity =>
            {
                entity.HasKey(e => e.IdClasseHabilidade)
                    .HasName("PK__CLASSEHA__5FC96972892127AA");

                entity.ToTable("CLASSEHABILIDADE");

                entity.Property(e => e.IdClasseHabilidade)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("idClasseHabilidade");

                entity.Property(e => e.IdClasse).HasColumnName("idClasse");

                entity.Property(e => e.IdHabilidade).HasColumnName("idHabilidade");

                entity.HasOne(d => d.IdClasseNavigation)
                    .WithMany(p => p.Classehabilidades)
                    .HasForeignKey(d => d.IdClasse)
                    .HasConstraintName("FK__CLASSEHAB__idCla__44FF419A");

                entity.HasOne(d => d.IdHabilidadeNavigation)
                    .WithMany(p => p.Classehabilidades)
                    .HasForeignKey(d => d.IdHabilidade)
                    .HasConstraintName("FK__CLASSEHAB__idHab__440B1D61");
            });

            modelBuilder.Entity<Habilidade>(entity =>
            {
                entity.HasKey(e => e.IdHabilidade)
                    .HasName("PK__HABILIDA__655F75289D0AA586");

                entity.ToTable("HABILIDADE");

                entity.HasIndex(e => e.NomeH, "UQ__HABILIDA__F76AAB23F9A0EEDD")
                    .IsUnique();

                entity.Property(e => e.IdHabilidade)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("idHabilidade");

                entity.Property(e => e.IdTipoHabilidade).HasColumnName("idTipoHabilidade");

                entity.Property(e => e.NomeH)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("nomeH");

                entity.HasOne(d => d.IdTipoHabilidadeNavigation)
                    .WithMany(p => p.Habilidades)
                    .HasForeignKey(d => d.IdTipoHabilidade)
                    .HasConstraintName("FK__HABILIDAD__idTip__412EB0B6");
            });

            modelBuilder.Entity<Personagem>(entity =>
            {
                entity.HasKey(e => e.IdPersonagem)
                    .HasName("PK__PERSONAG__4C5EDFB352E19A76");

                entity.ToTable("PERSONAGEM");

                entity.HasIndex(e => e.NomeP, "UQ__PERSONAG__F76AACDB5C189646")
                    .IsUnique();

                entity.Property(e => e.IdPersonagem).ValueGeneratedOnAdd();

                entity.Property(e => e.DataAtuailizacao)
                    .HasColumnType("date")
                    .HasColumnName("dataAtuailizacao");

                entity.Property(e => e.DataCriacao)
                    .HasColumnType("date")
                    .HasColumnName("dataCriacao");

                entity.Property(e => e.IdClasse).HasColumnName("idClasse");

                entity.Property(e => e.ManaMaxima).HasColumnName("manaMaxima");

                entity.Property(e => e.NomeP)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("nomeP");

                entity.Property(e => e.VidaMaxima).HasColumnName("vidaMaxima");

                entity.HasOne(d => d.IdClasseNavigation)
                    .WithMany(p => p.Personagems)
                    .HasForeignKey(d => d.IdClasse)
                    .HasConstraintName("FK__PERSONAGE__idCla__3D5E1FD2");
            });

            modelBuilder.Entity<Tipohabilidade>(entity =>
            {
                entity.HasKey(e => e.IdTipoHabilidade)
                    .HasName("PK__TIPOHABI__B197B8321AACBED2");

                entity.ToTable("TIPOHABILIDADE");

                entity.HasIndex(e => e.NomeTh, "UQ__TIPOHABI__77FC528A9D4C821A")
                    .IsUnique();

                entity.Property(e => e.IdTipoHabilidade)
                    .ValueGeneratedOnAdd()
                    .HasColumnName("idTipoHabilidade");

                entity.Property(e => e.NomeTh)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("nomeTH");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
