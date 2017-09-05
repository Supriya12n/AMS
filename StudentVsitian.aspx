<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentVsitian.aspx.cs" Inherits="StudentVsitian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container"> 
   <div class="container-fluid">
   <div class="jumbotron">

       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
           AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
           ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="firstname" HeaderText="firstname" 
                   SortExpression="firstname" />
               <asp:BoundField DataField="lastname" HeaderText="lastname" 
                   SortExpression="lastname" />
               <asp:BoundField DataField="emailid" HeaderText="emailid" 
                   SortExpression="emailid" />
               <asp:BoundField DataField="address" HeaderText="address" 
                   SortExpression="address" />
               <asp:BoundField DataField="gender" HeaderText="gender" 
                   SortExpression="gender" />
               <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
               <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
               <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" />
               <asp:BoundField DataField="company" HeaderText="company" 
                   SortExpression="company" />
               <asp:BoundField DataField="position" HeaderText="position" 
                   SortExpression="position" />
               <asp:BoundField DataField="contactno" HeaderText="contactno" 
                   SortExpression="contactno" />
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
           SelectCommand="SELECT Studentlist.firstname, Studentlist.lastname, Studentlist.emailid, StudentProfile.address, StudentProfile.gender, StudentProfile.dob, StudentProfile.email, StudentProfile.batch, StudentProfile.company, StudentProfile.position, StudentProfile.contactno FROM Studentlist CROSS JOIN StudentProfile">
       </asp:SqlDataSource>

    </div>
    </div>
    </div>
</asp:Content>

