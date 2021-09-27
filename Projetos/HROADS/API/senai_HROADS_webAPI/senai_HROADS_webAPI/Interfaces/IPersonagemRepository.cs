using senai_HROADS_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Interfaces
{
      interface IPersonagemRepository  
    {
        List<Personagem> Listar();
        Personagem BuscarPorId(int idPersonagem);
        void AtualizarIdUrl(int idPersonagem, Personagem personagemAtualizado);
        void Cadastrar(Personagem novoPersonagem);
        void Deletar(int idPersonagem);
    }
}
