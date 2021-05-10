using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje
{
    public partial class iletisim : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_iletisimMesaj_Click(object sender, EventArgs e)
        {
            TBLMESAJ t = new TBLMESAJ();
            t.AdSoyad = TextBox1.Text;
            t.Mail = TextBox3.Text;
            t.Konu = TextBox4.Text;
            t.MesajIcerik = TextBox5.Text;
            db.TBLMESAJs.Add(t);
            db.SaveChanges();
            foreach (Control c in this.Page.Form.Controls)
            {

                if (c is TextBox)
                {
                    ((TextBox)c).Text = string.Empty;
                }
            }
            

        }
    }
}