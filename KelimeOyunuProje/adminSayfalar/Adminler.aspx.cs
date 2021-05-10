using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy; 

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class Adminler : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLKISILERs.ToList();
            Repeater1.DataBind();

        }
    }
}