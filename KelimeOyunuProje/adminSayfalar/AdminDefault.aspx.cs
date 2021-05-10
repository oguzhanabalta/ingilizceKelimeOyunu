using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class AdminDefault : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciadi"] == null)
            {

                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz:" + Session["kullaniciadi"].ToString());
            }

            var oyun = (from x in db.TBLOYUNLARs
                           select new
                           {
                               x.ID,
                               x.OyunAdi,
                               x.OyunAciklama,
                               x.OyunResim,
                               x.OyunTarih,
                               x.OyunLink,
                               x.TBLKATEGORI.KategoriAd,
                               x.TBLKISILER.KisiAd,
                               x.TBLKISILER.KisiSoyad,
                               
                           }).ToList();
            Repeater1.DataSource = oyun;
            Repeater1.DataBind();

        }
    }
}