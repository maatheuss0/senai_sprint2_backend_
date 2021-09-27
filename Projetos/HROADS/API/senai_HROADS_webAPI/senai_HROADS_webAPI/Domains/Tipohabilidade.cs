using System;
using System.Collections.Generic;

#nullable disable

namespace senai_HROADS_webAPI.Domains
{
    public partial class Tipohabilidade
    {
        public Tipohabilidade()
        {
            Habilidades = new HashSet<Habilidade>();
        }

        public byte IdTipoHabilidade { get; set; }
        public string NomeTh { get; set; }

        public virtual ICollection<Habilidade> Habilidades { get; set; }
    }
}
