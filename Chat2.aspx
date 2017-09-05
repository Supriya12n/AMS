<%@ Page Title="" Language="C#" MasterPageFile="~/headerandfooter.master" AutoEventWireup="true" CodeFile="Chat2.aspx.cs" Inherits="Chat2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Group Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="22px" 
        style="margin-bottom: 0px" Width="128px"></asp:TextBox>
&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Join Chat" />
&nbsp;<div _designerregion="0">
    </div>

</asp:Content>

