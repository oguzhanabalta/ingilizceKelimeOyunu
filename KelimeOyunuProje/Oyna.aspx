<%@ Page Title="" Language="C#" MasterPageFile="~/KelimeOyunu.Master" AutoEventWireup="true" CodeBehind="Oyna.aspx.cs" Inherits="KelimeOyunuProje.Oyna" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page details -->
    <div class="breadcrumb-section">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="default.aspx">Kategoriler</a>
                </li>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <li class="breadcrumb-item active"><%# Eval("KategoriAd") %></li>
                    </ItemTemplate>
                </asp:Repeater>
                
            </ol>
        </div>
    </div>
    <br />
    <!-- //page details -->
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <hr />
                        <div class="box-content">
                            <h5 style="color: mediumpurple;"><%# Eval("OyunAdi")%></h5>
                            <hr />
                            <p class=""><%# Eval("OyunAciklama")%> </p>
                            <hr />
                            
                            <iframe src="<%# Eval("OyunLink")%>" width="1000" height="500" frameborder="0" allowfullscreen></iframe>
                        </div>
                        <br />
                        <%--<p class=""><%# Eval("OyunYapan")%> </p>--%>
                        <hr />
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>
</asp:Content>
