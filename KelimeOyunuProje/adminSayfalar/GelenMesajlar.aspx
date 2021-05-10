<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="KelimeOyunuProje.adminSayfalar.GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <br />
        <h2 style="color: orangered; text-align: center;">GELEN MESAJLAR</h2>
        <hr />

        <table class="customers">
            <tr>
                <th>ID</th>
                <th>MESAJI GÖNDEREN</th>
                <th>MAİL ADRESİ</th>
                <th>KONU</th>
                <th>MESAJ İÇERİĞİ</th>
                



            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("MesajId") %></td>
                        <td style="color: red"><%# Eval("AdSoyad") %></td>
                        <td><%# Eval("Mail") %></td>
                        <td><%# Eval("Konu") %></td>
                        <td><%# Eval("MesajIcerik") %></td>
                        

                    </tr>
                </ItemTemplate>
            </asp:Repeater>


        </table>
        </form>
</asp:Content>
