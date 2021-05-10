using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje
{
    public partial class TumOyunlar : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var fotolar = (from x in db.TBLOYUNLARs
                           select new
                           {
                               x.OyunAdi,
                               x.OyunAciklama,
                               x.OyunLink,
                               x.TBLKATEGORI.KategoriAd
                           }).ToList();

            ListView1.DataSource = fotolar;
            ListView1.DataBind();
        }
    }
}