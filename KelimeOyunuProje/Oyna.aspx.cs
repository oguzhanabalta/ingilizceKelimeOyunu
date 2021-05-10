using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje
{
    public partial class Oyna : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db =new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriId"]);
            var kategoriad = db.TBLKATEGORIs.Where(y=>y.KategoriId==id).ToList();
            Repeater2.DataSource = kategoriad;
            Repeater2.DataBind();

            var oyun = db.TBLOYUNLARs.Where(x => x.OyunKategori == id).ToList();

            Repeater1.DataSource = oyun;
            Repeater1.DataBind();
        }
    }
}