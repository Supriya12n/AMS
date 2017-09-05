<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentPlacementCell.aspx.cs" Inherits="StudentPlacementCell" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container"> 
   <div class="container-fluid">
   <div class="jumbotron">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Label ID="Label1" runat="server" Text="Post Jobs:-" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label><br /><br />
    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" WatermarkText="Job Title"
        runat="server" Enabled="True" TargetControlID="TextBox1">
    </asp:TextBoxWatermarkExtender>
    <br />
    <asp:TextBox ID="TextBox2" class="form-control" runat="server"  TextMode="MultiLine" 
        rows="7"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" WatermarkText="Job Description"
        runat="server" Enabled="True" TargetControlID="TextBox2">
    </asp:TextBoxWatermarkExtender>
    <asp:HtmlEditorExtender ID="TextBox2_HtmlEditorExtender" runat="server" EnableSanitization="false"
        Enabled="True" TargetControlID="TextBox2">
    </asp:HtmlEditorExtender>
    <br />
    <asp:Button ID="Button1" class="btn btn-warning" runat="server" Text="Post" onclick="Button1_Click" /><br />
    <asp:Label ID="Label2" runat="server"></asp:Label>

    <br />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="col-md-12"
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
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
        SelectCommand="SELECT * FROM [Jobs]"></asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
        </div>
        </div>
</asp:Content>

