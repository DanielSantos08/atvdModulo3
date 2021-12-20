﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using agencia.Data;

namespace agencia.Migrations
{
    [DbContext(typeof(Agenciacontext))]
    [Migration("20211220212748_InitialCreate")]
    partial class InitialCreate
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.8")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("agencia.Models.Agenciamodel", b =>
                {
                    b.Property<string>("CNPJ_Agencia")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Nome_Agencia")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("CNPJ_Agencia");

                    b.ToTable("MyAgencia");
                });

            modelBuilder.Entity("agencia.Models.Contatos", b =>
                {
                    b.Property<string>("Contato1")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Contato2")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Contato1");

                    b.ToTable("Contatos");
                });

            modelBuilder.Entity("agencia.Models.Destinos", b =>
                {
                    b.Property<int>("Id_Destino")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Nome_Destino")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nome_Estado")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id_Destino");

                    b.ToTable("Destinos");
                });

            modelBuilder.Entity("agencia.Models.NewCliente", b =>
                {
                    b.Property<int>("Id_Cliente")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CPF_Cliente")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nome_Cliente")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id_Cliente");

                    b.ToTable("Clientes");
                });

            modelBuilder.Entity("agencia.Models.Passagem", b =>
                {
                    b.Property<int>("Id_Passagem")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Quantidade")
                        .HasColumnType("int");

                    b.Property<int>("Valor")
                        .HasColumnType("int");

                    b.HasKey("Id_Passagem");

                    b.ToTable("Passagens");
                });
#pragma warning restore 612, 618
        }
    }
}