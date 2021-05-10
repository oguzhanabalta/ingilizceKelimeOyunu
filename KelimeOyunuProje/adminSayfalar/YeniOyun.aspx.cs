using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class YeniOyun : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var kategoriler = (from x in db.TBLKATEGORIs

                               select new
                               {
                                   x.KategoriAd,
                                   x.KategoriId

                               }).ToList();
            DropDownList1.DataSource = kategoriler;
            DropDownList1.DataBind();

            var kisiler = (from x in db.TBLKISILERs

                           select new
                           {
                               x.KisiAd,
                               x.KisiId

                           }).ToList();
            DropDownList2.DataSource = kisiler;
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLOYUNLAR t = new TBLOYUNLAR();
            t.OyunAdi = TextBox1.Text;
            t.OyunTarih = DateTime.Now;
            t.OyunAciklama = TextBox2.Text;
            t.OyunLink = TextBox3.Text;
            t.OyunKategori = byte.Parse(DropDownList1.SelectedValue);
            t.OyunuYapan = byte.Parse(DropDownList2.SelectedValue);
            db.TBLOYUNLARs.Add(t);
            db.SaveChanges();
            Response.Redirect("AdminDefault.aspx");
        }
    }
}