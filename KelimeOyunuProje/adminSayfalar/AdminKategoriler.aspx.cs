using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class AdminKategoriler : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var kategoriler = (from x in db.TBLKATEGORIs
                        select new
                        {
                            x.KategoriId,
                            x.KategoriAd,
                            x.KategoriAciklama,
                            x.KategoriResim

                        }).ToList();
            Repeater1.DataSource = kategoriler;
            Repeater1.DataBind();
        }
    }
}