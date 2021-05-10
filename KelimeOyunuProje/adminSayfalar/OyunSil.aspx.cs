using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class OyunSil : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var sil = db.TBLOYUNLARs.Find(x);
            db.TBLOYUNLARs.Remove(sil);
            db.SaveChanges();
            Response.Redirect("AdminDefault.aspx");
        }
    }
}