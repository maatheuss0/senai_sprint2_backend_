using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_HROADS_webAPI.Domains
{
    public class TipoUsuario
    {
        public TipoUsuario()
        {
            Usuarios = new HashSet<Usuario>();
        }

        public short IdTipoUsuario { get; set; }
        public string TipoUsuario1 { get; set; }

        public virtual ICollection<Usuario> Usuarios { get; set; }
    }
}
