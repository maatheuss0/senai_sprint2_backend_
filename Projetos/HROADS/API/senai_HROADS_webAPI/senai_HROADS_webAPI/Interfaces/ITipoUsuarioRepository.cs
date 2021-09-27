]using senai_HROADS_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Interfaces
{
    interface ITipoUsuarioRepository
    {
        List<TipoUsuario> Listar();
        TipoUsuario BuscarPorId(int idTipoUsuario);
        void AtualizarIdUrl(int idTipoUsuario, TipoUsuario tipoUsuarioAtualizado);
        void Cadastrar(TipoUsuario novoTipoUsuario);
        void Deletar(int idTipoUsuario);
    }
}
