using senai_HROADS_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Interfaces
{
    interface IClasseRepository
    {
        List<Classe> Listar();
        Classe BuscarPorId(int idClasse);
        void AtualizarIdUrl(int idClasse, TipoUsuario classeAtualizada);
        void Cadastrar(Classe novaClasse);
        void Deletar(int idClasse);
    }
}
