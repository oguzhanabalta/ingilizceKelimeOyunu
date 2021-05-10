using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["KategoriId"]);
            var sil = db.TBLKATEGORIs.Find(x);
            db.TBLKATEGORIs.Remove(sil);
            db.SaveChanges();
            Response.Redirect("AdminKategoriler.aspx");
        }
    }
}