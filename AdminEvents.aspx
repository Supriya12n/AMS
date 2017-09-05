<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminEvents.aspx.cs" Inherits="AdminEvents" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"> 
   <div class="container-fluid">
   <div class="jumbotron">

<script runat="Server" type="text/C#">
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            new AjaxControlToolkit.Slide("images/al1.jpg", "Alumni Meet", "Lets Get Together", "images/al1.jpg"),
            new AjaxControlToolkit.Slide("images/mm2.jpg", "Maay Marathi", "Marathi Culture Special", "images/mm2.jpg"),
            new AjaxControlToolkit.Slide("images/verve.jpg", "VSIT Verve", "Houses, Lets Compete!", "images/verve.jpg"),
            new AjaxControlToolkit.Slide("images/vig1.jpg", "VSIT Vigour", "Its Fun Time", "images/vig1.jpg"),
            new AjaxControlToolkit.Slide("images/sm.jpg", "Shanivar Manch", "Show Your Talent", "images/sm.jpg"),
            new AjaxControlToolkit.Slide("images/al6.jpg", "Alumni Meet", "Lets Get Together", "images/al6.jpg"),
            new AjaxControlToolkit.Slide("images/mm3.jpg", "Maay Marathi", "Marathi Culture Special", "images/mm3.jpg"),
            new AjaxControlToolkit.Slide("images/v2.jpg", "VSIT Verve", "Houses, Lets Compete!", "images/v2.jpg"),
            new AjaxControlToolkit.Slide("images/vig2.jpg", "VSIT Vigour", "Its Fun Time", "images/vig2.jpg")};
        }
    </script>

<div class="demoarea">
        <%--<div class="demoheading">
            SlideShow </div>--%>
        
        
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>    <div style="text-align:center">
            <asp:Label runat="Server" ID="imageTitle" CssClass="slideTitle" class="col-md-12"
                Font-Bold="True" ForeColor="#3366FF"/><br /><br />
            <asp:Image ID="Image1" runat="server" class="col-md-12"
                Height="300"
                Width="400"
                Style="border: 1px solid black;"                 
                AlternateText="VSIT Events" />
            <asp:Label runat="server" ID="imageDescription" CssClass="slideDescription" 
                Font-Size="Large" ForeColor="#3366FF"></asp:Label><br />
            <asp:Button runat="Server" ID="prevButton" Text="Prev" Font-Size="Larger" />
            <asp:Button runat="Server" ID="playButton" Text="Play" Font-Size="Larger" />
            <asp:Button runat="Server" ID="nextButton" Text="Next" Font-Size="Larger" />
            <asp:SlideShowExtender ID="slideshowextend1" runat="server" 
                TargetControlID="Image1"
                SlideShowServiceMethod="GetSlides" 
                AutoPlay="true" 
                ImageTitleLabelID="imageTitle"
                ImageDescriptionLabelID="imageDescription"
                NextButtonID="nextButton" 
                PlayButtonText="Play" 
                StopButtonText="Stop"
                PreviousButtonID="prevButton" 
                PlayButtonID="playButton" 
                Loop="true" SlideShowAnimationType="SlideRight" />
        </div>
    </div>

    <br />
    
    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-warning "
        PostBackUrl="~/AdminAluminiMeet.aspx">Alumini Meet</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-warning "
    PostBackUrl="~/AdminMaayMarathi.aspx">Maay Marathi</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-warning "
    PostBackUrl="~/AdminVerve.aspx">Verve</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton4" runat="server" class="btn btn-warning "
        PostBackUrl="~/AdminVigour.aspx">Vigour</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton5" runat="server" class="btn btn-warning "
        PostBackUrl="~/AdminShanivaarManch.aspx">Shanivar Manch</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
    <br />

</div>
</div>
</div>

</asp:Content>

