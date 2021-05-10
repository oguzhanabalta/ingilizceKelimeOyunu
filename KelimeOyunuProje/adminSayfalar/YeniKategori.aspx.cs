using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class YeniKategori : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLKATEGORI t = new TBLKATEGORI();
            t.KategoriAd = TextBox1.Text;
            t.KategoriResim = TextBox2.Text;
            t.KategoriAciklama = TextBox3.Text;
            db.TBLKATEGORIs.Add(t);
            db.SaveChanges();
            Response.Redirect("AdminKategoriler.aspx");
        }
    }
}