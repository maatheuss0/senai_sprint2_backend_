﻿using senai_HROADS_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Interfaces
{
    interface IClasseHabilidadeRepository
    {
        List<Classehabilidade> Listar();
        Classehabilidade BuscarPorId(int idClasseHabilidade);
        void AtualizarIdUrl(int idClasseHabilidade, TipoUsuario classeHabilidadeAtualizada);
        void Cadastrar(Classe novaClasseHabilidade);
        void Deletar(int idClasseHabilidade);
    }
}