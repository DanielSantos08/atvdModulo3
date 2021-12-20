using Microsoft.EntityFrameworkCore.Migrations;

namespace agencia.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Clientes",
                columns: table => new
                {
                    Id_Cliente = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nome_Cliente = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CPF_Cliente = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Clientes", x => x.Id_Cliente);
                });

            migrationBuilder.CreateTable(
                name: "Contatos",
                columns: table => new
                {
                    Contato1 = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Contato2 = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Contatos", x => x.Contato1);
                });

            migrationBuilder.CreateTable(
                name: "Destinos",
                columns: table => new
                {
                    Id_Destino = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nome_Destino = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Nome_Estado = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Destinos", x => x.Id_Destino);
                });

            migrationBuilder.CreateTable(
                name: "MyAgencia",
                columns: table => new
                {
                    CNPJ_Agencia = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Nome_Agencia = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MyAgencia", x => x.CNPJ_Agencia);
                });

            migrationBuilder.CreateTable(
                name: "Passagens",
                columns: table => new
                {
                    Id_Passagem = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Quantidade = table.Column<int>(type: "int", nullable: false),
                    Valor = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Passagens", x => x.Id_Passagem);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Clientes");

            migrationBuilder.DropTable(
                name: "Contatos");

            migrationBuilder.DropTable(
                name: "Destinos");

            migrationBuilder.DropTable(
                name: "MyAgencia");

            migrationBuilder.DropTable(
                name: "Passagens");
        }
    }
}
