<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="KelimeOyunuProje.adminSayfalar.AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server">
        <br />
        <h2 style="color: orangered; text-align: center;">OYUNLAR</h2>
        <hr />

        <table class="customers">
            <tr>
                <th>ID</th>
                <th>OYUN ADI</th>
                <th>AÇIKLAMA</th>
                <th>LİNK</th>
                <th>TARİH</th>
                <th>OYUNU YAPAN</th>
                <th>KATEGORİ</th>
                <th>SİL</th>
                <th>GÜNCELLEŞTİR</th>



            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td style="color: red"><%# Eval("OyunAdi") %></td>
                        <td><%# Eval("OyunAciklama") %></td>
                        <td><%# Eval("OyunLink") %></td>
                        <td><%# Eval("OyunTarih") %></td>
                        <td><%# Eval("KisiAd") %> <%# Eval("KisiSoyad") %></td>
                        <td style="color: red"><%# Eval("KategoriAd") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger"
                                NavigateUrl='<%# "OyunSil.aspx?ID="+ Eval("ID") %>'>SİL</asp:HyperLink>

                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning"
                                NavigateUrl='<%# "OyunGuncelle.aspx?ID="+ Eval("ID") %>'>GÜNCELLEŞTİR</asp:HyperLink>

                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>


        </table>
        <br />
        <a href="YeniOyun.aspx" class="btn btn-primary" style="margin-left: 10%;">YENİ OYUN</a>
        <hr />

    </form>
</asp:Content>
