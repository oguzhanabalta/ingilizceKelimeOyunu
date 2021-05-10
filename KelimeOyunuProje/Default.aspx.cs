using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje
{
    public partial class Default : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var fotolar = db.TBLKATEGORIs.ToList();

            listViewKategoriler.DataSource = fotolar;
            listViewKategoriler.DataBind();

        }
    }
}