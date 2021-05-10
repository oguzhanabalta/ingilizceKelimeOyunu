<%@ Page Title="" Language="C#" MasterPageFile="~/KelimeOyunu.Master" AutoEventWireup="true" CodeBehind="TumOyunlar.aspx.cs" Inherits="KelimeOyunuProje.TumOyunlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page details -->
    <div class="breadcrumb-section">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="default.aspx">Kategoriler</a>
                </li>
                <li class="breadcrumb-item active">Tüm Oyunlar</li>
            </ol>
        </div>
    </div>
    <br />
    <!-- //page details -->
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <div class="box-content">
                            <h5 style="color:mediumpurple;"><%# Eval("OyunAdi")%></h5>
                            <p class=""><%# Eval("OyunAciklama")%> </p>
                            <a href="#">
                                <p style="color:mediumpurple;"><%# Eval("KategoriAd")%> </p>
                            </a>
                            <iframe src="<%# Eval("OyunLink")%>" width="1000" height="500" frameborder="0" allowfullscreen></iframe>
                        </div>
                        <br />
                        <hr />
                        <br />
                    </ItemTemplate>
                </asp:ListView>

            </div>
        </div>
    </div>
</asp:Content>
