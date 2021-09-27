using senai_HROADS_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Interfaces
{
    interface IHabilidadeRepository
    {
        List<Habilidade> Listar();
        Habilidade BuscarPorId(int habilidade);
        void AtualizarIdUrl(int idHabilidade, Habilidade habilidadeAtualizada);
        void Cadastrar(Habilidade novaHabilidade);
        void Deletar(int habilidade);
    }
}
