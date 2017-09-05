<%@ Page Title="" Language="C#" MasterPageFile="~/NormalMasterPage.master" AutoEventWireup="true" CodeFile="NormalContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="main_bg">
<div class="wrap">
<div class="wrapper">
<div class="main">
		<div class="section group">				
				<div class="col span_1_of_2">
					<div class="contact_info">
			    	 	<h2 class="style">Find Us Here</h2>
			    	 		<div class="map">
					   			<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.966804152524!2d72.8683065141724!3d19.021184387119394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7cf394b345bdd%3A0x8d44ea4f85af3ceb!2sVidyalankar+School+Of+Information+Technology!5e0!3m2!1sen!2sin!4v1457431067983" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                                <!--<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color: #1ABC9C;text-align:left;font-size:13px">View Larger Map</a></small>-->
					   		</div>

      				</div>
      			<div class="company_address">
				     	<h2 class="style">VSIT Address </h2>
						<p>Address</p>
                        
                        <p>Vidyalankar Campus,</p>
                        <p>Vidyalankar College Marg,</p>
                        <p>Wadala (East),</p>
                        <p>Mumbai - 400 037</p>
                        <p>Maharashtra,</p>
                        <p>India.</p>


				   		<p>Phone:+91 22 2422 88 92</p>
				   		<p>Fax: +91 22 24161126</p>
				 	 	<p>Email: <span>www.vsit.edu.in</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				   </div>
				   <div class="clear"></div>
				</div>				
				<div class="col span_2_of_4">
				  <div class="contact-form">
				  	<h2 class="style">FeedBack:-</h2>
					       <form method="post" action="contact-post.html">
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span>
                                    <asp:TextBox ID="TextBox1" class="textbox" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><asp:TextBox ID="TextBox2" class="textbox" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						     	<span><label>MOBILE</label></span>
						    	<span><asp:TextBox ID="TextBox3" class="textbox" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>SUBJECT</label></span>
						    	<span><asp:TextBox ID="TextBox4" class="textbox" runat="server" TextMode="MultiLine"></asp:TextBox></span>
						    </div>
						   <div>
                               <asp:Button ID="Button1" runat="server" class="btn btn_s" Text="Submit" 
                                   onclick="Button1_Click" />						  </div>
					    </form>
				    </div>
  				</div>		
  			<div class="clear"></div>
		  </div>
	</div>
</div>
</div>
</div>

</asp:Content>

