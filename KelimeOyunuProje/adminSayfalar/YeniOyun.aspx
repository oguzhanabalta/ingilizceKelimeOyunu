﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniOyun.aspx.cs" Inherits="KelimeOyunuProje.adminSayfalar.YeniOyun" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <h2 style="color: orangered; text-align: center;">OYUN EKLE</h2>
        <hr />
    <form runat="server" class="form-group">

        <asp:TextBox ID="TextBox1" runat="server" placeholder="OYUN ADI" CssClass="form-control" Width="80%" style="margin-left:10%" required=""></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder="LİNK" CssClass="form-control" Width="80%" style="margin-left:10%" required=""></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="80%" style="margin-left:10%" DataTextField="KategoriAd" DataValueField="KategoriId"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="80%" Style="margin-left: 10%" DataTextField="KisiAd" DataValueField="KisiId"></asp:DropDownList>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="AÇIKLAMA" CssClass="form-control" Width="80%" Height="150" style="margin-left:10%" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click" CssClass="btn btn-success" style="margin-left:10%" />
        <a href="AdminDefault.aspx" class="btn btn-primary">İPTAL ET</a>







    </form>
</asp:Content>
