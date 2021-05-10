<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriler.aspx.cs" Inherits="KelimeOyunuProje.adminSayfalar.AdminKategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <br />
        <h2 style="color: orangered; text-align: center;">KATEGORİLER</h2>
        <hr />

        <table class="customers">
            <tr>
                <th>ID</th>
                <th>KATEGORİ ADI</th>
                <th>AÇIKLAMA</th>
                <th>RESİM</th>                
                <th>SİL</th>
                <th>GÜNCELLEŞTİR</th>



            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <itemtemplate>
                
                <tr>
                    <td><%# Eval("KategoriId") %></td>
                    <td style="color:red"><%# Eval("KategoriAd") %></td> 
                    <td><%# Eval("KategoriAciklama") %></td>
                    <td><%# Eval("KategoriResim") %></td>
                    
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" 
                         NavigateUrl='<%# "KategoriSil.aspx?KategoriId="+ Eval("KategoriId") %>'>SİL</asp:HyperLink>

                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning"
                         NavigateUrl='<%# "KategoriGuncelle.aspx?KategoriId="+ Eval("KategoriId") %>'>GÜNCELLEŞTİR</asp:HyperLink>

                    </td>
                    
                </tr>
            </itemtemplate>
            </asp:Repeater>


        </table>
        <br />
        <a href="YeniKategori.aspx" class="btn btn-primary" style="margin-left: 10%;">YENİ KATEGORİ</a>
        <hr />

    </form>
</asp:Content>
