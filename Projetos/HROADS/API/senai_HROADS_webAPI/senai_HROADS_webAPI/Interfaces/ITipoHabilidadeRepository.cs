using senai_HROADS_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Interfaces
{
    interface ITipoHabilidadeRepository
    {
        List<Tipohabilidade> Listar();
        Tipohabilidade BuscarPorId(int idTipoHabilidade);
        void AtualizarIdUrl(int idTipoHabilidade, Tipohabilidade tipoHabilidadeAtualizado);
        void Cadastrar(Tipohabilidade novoTipoHabilidade);
        void Deletar(int idTipoHabilidade);
    }
}
