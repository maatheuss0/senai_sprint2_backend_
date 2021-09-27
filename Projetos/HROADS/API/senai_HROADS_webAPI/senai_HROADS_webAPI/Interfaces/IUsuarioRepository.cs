using senai_HROADS_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Interfaces
{
    interface IUsuarioRepository
    {
        List<Usuario> Listar();
        TipoUsuario BuscarPorId(int idUsuario);
        void AtualizarIdUrl(int idUsuario, Usuario usuarioAtualizado);
        void Cadastrar(TipoUsuario novoUsuario);
        void Deletar(int idUsuario);
        Usuario Login(string email, string senha);
    }
}
