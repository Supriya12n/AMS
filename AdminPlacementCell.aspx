<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminPlacementCell.aspx.cs" Inherits="AdminPlacementCell" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container"> 
   <div class="container-fluid">
   <div class="jumbotron">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Label ID="Label1" runat="server" Text="Post Jobs:-" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label><br /><br />
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" WatermarkText="Job Title"
        runat="server" Enabled="True" TargetControlID="TextBox1">
    </asp:TextBoxWatermarkExtender>
    <br />
    <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="MultiLine" Rows="7"
        ></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" WatermarkText="Job Description"
        runat="server" Enabled="True" TargetControlID="TextBox2">
    </asp:TextBoxWatermarkExtender>
    <asp:HtmlEditorExtender ID="TextBox2_HtmlEditorExtender" runat="server" EnableSanitization="false"
        Enabled="True" TargetControlID="TextBox2">
    </asp:HtmlEditorExtender>
    <br />
    <asp:Button ID="Button1" runat="server" class="btn btn-warning" Text="Post" onclick="Button1_Click" /><br />
    <asp:Label ID="Label2" runat="server"></asp:Label>

</div>
</div>
</div>
</asp:Content>

