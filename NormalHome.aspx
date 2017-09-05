<%@ Page Title="" Language="C#" MasterPageFile="~/NormalMasterPage.master" AutoEventWireup="true" CodeFile="NormalHome.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="fluid_container">
   <div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4">
          <div data-src="images/image1.JPG"> </div>
            <div data-src="images/image2.JPG"> </div>
            <div  data-src="images/image3.JPG"> </div>
  </div>
</div>
	<div class="clear"></div>
<div class="wrap">
<div class="wrapper">
<div class="main_text">
		<h2>A place of light, of liberty, and learning</h2>
		<h3>we provide leading intensive courses</h3>
	</div>	

    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" class="btn btn_s" runat="server" Text="Login" 
        onclick="Button1_Click" />

	</div>
	</div>
<div class="main_bg">
<div class="wrap">
<div class="wrapper">
	<div class="main">
			<div class="grid_1_of_2 images_1_of_2">
				<h4> The Vidyalankar Group of Educational Institutes is a prestigious education specialist that has established centrally recognized colleges and qualitative training institutes with branches across Maharashtra. Managed by the Vidyalankar Dnyanapeeth Trust established in 1960 by Prof. Chandrashekhar S. Deshpande, an academician par excellence, the Vidyalankar Group is marching ahead resolutely, ably steered by its current Chairperson Dr. Sanjeewani Deshpande and Mr. Vishwas Deshpande and Ms. Rashmi Deshpande (Managing Trustees).</h4>
				<p class="para">Vidyalankar was established in 1960 by Prof. Chandrashekhar S. Deshpande, a technocrat, visionary and a person blessed with extraordinary academic talent and immaculate engineering skills </p>
				<div class="button1">
					<a href="http://vsit.edu.in/our-institute" class="btn btn_s">view More</a>
				</div>
			</div>
			<div class="grid_1_of_2 images_1_of_2 img_style">
				<img src="images/image1.JPG" alt="">
			</div>
			<div class="clear"></div>
	</div>
</div>
</div>
</div>

</asp:Content>

