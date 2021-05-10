using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["KategoriId"]);
            if (Page.IsPostBack == false)
            {
                var deger = db.TBLKATEGORIs.Find(y);
                TextBox1.Text = deger.KategoriAd;
                TextBox2.Text = deger.KategoriResim;
                TextBox3.Text = deger.KategoriAciklama;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["KategoriId"]);
            var guncelle = db.TBLKATEGORIs.Find(y);
            guncelle.KategoriAd = TextBox1.Text;
            guncelle.KategoriResim = TextBox2.Text;
            guncelle.KategoriAciklama = TextBox3.Text;
            db.SaveChanges();
            Response.Redirect("AdminKategoriler.aspx");
        }
    }
}