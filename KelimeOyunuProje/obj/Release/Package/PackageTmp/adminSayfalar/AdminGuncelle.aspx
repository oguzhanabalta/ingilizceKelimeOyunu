<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminGuncelle.aspx.cs" Inherits="KelimeOyunuProje.adminSayfalar.AdminGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <h2 style="color: orangered; text-align: center;">KATEGORİ GÜNCELLE</h2>
        <hr />
    <form runat="server" class="form-group">

        <asp:TextBox ID="TextBox1" runat="server" placeholder="ADMİN ADI" CssClass="form-control" Width="80%" style="margin-left:10%" required=""></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="ADMİN SOYADI" CssClass="form-control" Width="80%" style="margin-left:10%" required="" ></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder="KULLANICIADI" CssClass="form-control" Width="80%"  style="margin-left:10%" required="" ></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="ŞİFRE" CssClass="form-control" Width="80%"  style="margin-left:10%" required="" ></asp:TextBox>
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click"  CssClass="btn btn-success" style="margin-left:10%" />
        <a href="Adminler.aspx" class="btn btn-primary">İPTAL ET</a>







    </form>
</asp:Content>
