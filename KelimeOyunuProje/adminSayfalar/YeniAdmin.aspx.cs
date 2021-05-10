using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class YeniAdmin : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLKISILER t = new TBLKISILER();
            t.KisiAd = TextBox1.Text;
            t.KisiSoyad = TextBox2.Text;
            t.kullaniciadi = TextBox3.Text;
            t.sifre = TextBox4.Text;
            db.TBLKISILERs.Add(t);
            db.SaveChanges();
            Response.Redirect("Adminler.aspx");
        }
    }
}