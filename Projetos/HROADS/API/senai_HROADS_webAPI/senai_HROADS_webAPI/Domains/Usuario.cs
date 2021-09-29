﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Domains
{
    public class Usuario
    {
        public short IdUsuario { get; set; }
        public short? IdTipoUsuario { get; set; }

        [Required(ErrorMessage = "O E-Mail é obrigatório!")]
        public string Email { get; set; }

        [Required(ErrorMessage = "A Senha é obrigatória")]
        public string Senha { get; set; }

        public virtual TipoUsuario IdTipoUsuarioNavigation { get; set; }
    }
}
