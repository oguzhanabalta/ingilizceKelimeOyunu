using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KelimeOyunuProje.Entitiy;

namespace KelimeOyunuProje.adminSayfalar
{
    public partial class OyunGuncelle : System.Web.UI.Page
    {
        KelimeOgreniyorumDBEntities db = new KelimeOgreniyorumDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
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

                var deger = db.TBLOYUNLARs.Find(y);
                TextBox1.Text = deger.OyunAdi;
                TextBox2.Text = deger.OyunAciklama;
                TextBox3.Text = deger.OyunLink;
                TextBox4.Text = deger.OyunTarih.ToString();
                DropDownList1.SelectedValue = deger.TBLKATEGORI.KategoriAd;
                DropDownList2.SelectedValue = deger.TBLKISILER.KisiAd;


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["ID"]);
            var guncelle = db.TBLOYUNLARs.Find(y);
            guncelle.OyunAdi = TextBox1.Text.ToString();
            guncelle.OyunAciklama = TextBox2.Text.ToString();
            guncelle.OyunLink = TextBox3.Text;
            guncelle.OyunTarih = DateTime.Parse(TextBox4.Text);
            guncelle.OyunKategori = byte.Parse(DropDownList1.SelectedValue);
            guncelle.OyunuYapan = byte.Parse(DropDownList2.SelectedValue);
            db.SaveChanges();
            Response.Redirect("AdminDefault.aspx");

        }
    }
}