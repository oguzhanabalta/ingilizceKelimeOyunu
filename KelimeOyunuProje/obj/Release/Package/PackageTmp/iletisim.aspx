<%@ Page Title="" Language="C#" MasterPageFile="~/KelimeOyunu.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="KelimeOyunuProje.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- page details -->
    <div class="breadcrumb-section">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="default.aspx">İletişim</a>
            </ol>
        </div>
    </div>
    <!-- //page details -->
    <!-- contact -->
<section class="contact py-sm-5 py-4">
	<div class="container py-md-3">
		<h2 class="heading text-capitalize text-center mb-lg-5 mb-sm-4 mb-3"> İletişim</h2>
		<div class="contact-form">
			<form action="#" runat="server">
				<div class="row contact-message-sectns">
					<div class="col-lg-4 col-md-6 input-btm-spc form-text1">
						<label><span class="fa fa-user"></span> İsmİnİz:</label>
						<asp:TextBox ID="TextBox1" runat="server" placeholder="ad soyad" required=""></asp:TextBox>
					</div>
					
					<div class="col-lg-4 col-md-6 input-btm-spc form-text1">
						<label><span class="fa fa-envelope-open"></span> Emaİl Adresİnİz:</label>
						<asp:TextBox ID="TextBox3" runat="server" placeholder="ingilizceogren@gmail.com" required="" ></asp:TextBox>
						
					</div>
					<div class="col-lg-4 col-md-6 input-btm-spc form-text2">
						<label><span class="fa fa-pencil"></span> Konu:</label>
						<asp:TextBox ID="TextBox4" runat="server" placeholder="Konu" required=""></asp:TextBox>
					</div>
				</div>
				<div class="contact-message-sectns ">
					<div class="input-btm-spc form-text2 p-0"">
						<asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınızı Girin" required="" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
				<asp:Button class="btn" ID="btn_iletisimMesaj" runat="server" Text="Gönder" OnClick="btn_iletisimMesaj_Click"  width="150px" Height="50px"/>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
			</form>
		</div>
	</div>
</section>
<!-- //contact -->
</asp:Content>
