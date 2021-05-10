using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;


namespace KelimeOyunuProje.adminSayfalar
{
    public partial class AdminGuncelle : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["KisiId"]);
            if (Page.IsPostBack == false)
            {
                var deger = db.TBLKISILERs.Find(y);
                TextBox1.Text = deger.KisiAd;
                TextBox2.Text = deger.KisiSoyad;
                TextBox3.Text = deger.kullaniciadi;
                TextBox4.Text = deger.sifre;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["KisiId"]);
            var guncelle = db.TBLKISILERs.Find(y);
            guncelle.KisiAd = TextBox1.Text;
            guncelle.KisiSoyad = TextBox2.Text;
            guncelle.kullaniciadi = TextBox3.Text;
            guncelle.sifre = TextBox4.Text;
            db.SaveChanges();
            Response.Redirect("Adminler.aspx");

        }
    }
}