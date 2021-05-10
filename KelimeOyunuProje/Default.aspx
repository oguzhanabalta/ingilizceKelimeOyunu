<%@ Page Title="" Language="C#" MasterPageFile="~/KelimeOyunu.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KelimeOyunuProje.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page details -->
    <div class="breadcrumb-section">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="default.aspx">Kategoriler</a>
            </ol>
        </div>
    </div>
    <!-- //page details -->

    <!-- gallery -->
    <div class="gallery py-sm-5 py-4 position-relative" id="gallery">
        <div class="container py-lg-3">
            <hr />
            <h1 class="heading text-center mb-lg-5 mb-sm-4 mb-3 editContent" style="color:mediumpurple;">&& KATEGORİLER &&</h1>
            <hr />
            <h6 class="heading text-center mb-lg-5 mb-sm-4 mb-3 editContent">OYNA & ÖĞREN</h6>
            <hr />
            <div class="news-grids gal">
                <div class="row">
                    <asp:ListView ID="listViewKategoriler" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-4 col-sm-8 gal-img">
                                <a href="Oyna.aspx?KategoriId=<%# Eval("KategoriId") %>">
                                <asp:Image ImageUrl='<%# Eval("KategoriResim") %>' runat="server" Height="250" />
                                <h5 style="color:mediumpurple;"><%# Eval("KategoriAd")%></h5></a>
                                <p class=""><%# Eval("KategoriAciklama")%> </p>
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
    <!-- gallery popups -->
</asp:Content>
