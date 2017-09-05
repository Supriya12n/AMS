<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminVigour.aspx.cs" Inherits="AdminVigour" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container"> 
   <div class="container-fluid">
   <div class="jumbotron">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<h2>Add Event Details..!!</h2>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" WatermarkText="Event Name..!!"
        runat="server" Enabled="True" TargetControlID="TextBox1">
    </asp:TextBoxWatermarkExtender>
    <br />
    <asp:TextBox ID="TextBox2"  runat="server" class="form-control" TextMode="MultiLine" 
        rows="7"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" WatermarkText="Description..!!"
        runat="server" Enabled="True" TargetControlID="TextBox2">
    </asp:TextBoxWatermarkExtender>
    <asp:HtmlEditorExtender ID="TextBox2_HtmlEditorExtender" runat="server" EnableSanitization="false"
        Enabled="True" TargetControlID="TextBox2">
    </asp:HtmlEditorExtender>
    <br />
    <asp:Button ID="Button1" runat="server" class="btn btn-warning" Text="Post" onclick="Button1_Click" />
    <asp:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" runat="server" 
        ConfirmText="Confirm Post..!?" Enabled="True" TargetControlID="Button1">
    </asp:ConfirmButtonExtender>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
           AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
           ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="eventname" HeaderText="eventname" 
                SortExpression="eventname" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT * FROM [VigourList]"></asp:SqlDataSource>
    <br />
    </div>
    </div>
    </div>
</asp:Content>

