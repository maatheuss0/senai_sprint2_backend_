using senai_HROADS_webAPI.Contexts;
using senai_HROADS_webAPI.Domains;
using senai_HROADS_webAPI.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        public void AtualizarIdUrl(int idUsuario, Usuario usuarioAtualizado)
        {
            throw new NotImplementedException();
        }

        public TipoUsuario BuscarPorId(int idUsuario)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(TipoUsuario novoUsuario)
        {
            throw new NotImplementedException();
        }

        public void Deletar(int idUsuario)
        {
            throw new NotImplementedException();
        }

        public List<Usuario> Listar()
        {
            throw new NotImplementedException();
        }

        HROADSContext ctx = new HROADSContext();
        public Usuario Login(string email, string senha)    
        {
            return ctx.Usuarios.FirstOrDefault(u => u.Email == email && u.Senha == senha);
        }
    }
}
