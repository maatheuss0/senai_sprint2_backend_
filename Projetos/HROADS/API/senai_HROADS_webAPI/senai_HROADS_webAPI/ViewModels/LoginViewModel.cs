using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.ViewModels
{
    public class LoginViewModel
    {
      [Required(ErrorMessage = "Informe o e-mail de úsuario por favor!")]
      public string Email { get; set; }

      [Required(ErrorMessage = "Informe a senha por favor!")]
       public string Senha { get; set; }

    }
}
