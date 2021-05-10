<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminler.aspx.cs" Inherits="KelimeOyunuProje.adminSayfalar.Adminler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <br />
        <h2 style="color: orangered; text-align: center;">ADMİNLER</h2>
        <hr />

        <table class="customers">
            <tr>
                <th>ID</th>
                <th>ADMİN ADI</th>
                <th>ADMİN SOYADI</th>
                <th>KULLANICI ADI</th>
                <th>ŞİFRE</th>
                <th>SİL</th>
                <th>GÜNCELLEŞTİR</th>



            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("KisiId") %></td>
                        <td style="color: red"><%# Eval("KisiAd") %></td>
                        <td><%# Eval("KisiSoyad") %></td>
                        <td><%# Eval("kullaniciadi") %></td>
                        <td><%# Eval("sifre") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger"
                                NavigateUrl='<%# "AdminSil.aspx?KisiId="+ Eval("KisiId") %>'>SİL</asp:HyperLink>

                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning"
                                NavigateUrl='<%# "AdminGuncelle.aspx?KisiId="+ Eval("KisiId") %>'>GÜNCELLEŞTİR</asp:HyperLink>

                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>


        </table>
        <br />
        <a href="YeniAdmin.aspx" class="btn btn-primary" style="margin-left: 10%;">YENİ ADMİN</a>
        <hr />

    </form>
</asp:Content>
