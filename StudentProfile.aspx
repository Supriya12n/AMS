<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentProfile.aspx.cs" Inherits="StudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container"> 
   <div class="container-fluid">
   <div class="jumbotron">
<h3><asp:Label ID="Label1" runat="server" Text="Complete Ur Profile..!!"></asp:Label></h3>
  
    <br />
    <table style="width:100%;"  cellpadding="1px">
        <tr>
            <td style="width: 166px">
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label14" runat="server" Text="FirstName..!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">
                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label15" runat="server" Text="LastName..!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="address" ErrorMessage="*" 
                    style="color: #FF0000" ValidationGroup="g"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                <br />
            </td>
            <td>
                <asp:RadioButtonList ID="gender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="gender" ErrorMessage="*" 
                    style="color: #FF0000" ValidationGroup="g"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="dateofbirth" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="dateofbirth" ErrorMessage="Please Enter Date of Birth" 
                    style="color: #FF0000" ValidationGroup="g"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="contact" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="contact" ErrorMessage="*" style="color: #FF0000" 
                    ValidationGroup="g"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="contact" ErrorMessage="Please enter valid Number" 
                    style="color: #FF0000" ValidationExpression="^[0-9]{10}" ValidationGroup="g"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label8" runat="server" Text="Email Id"></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="emailid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="emailid" ErrorMessage="*" style="color: #FF0000" 
                    ValidationGroup="g"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailid" ErrorMessage="Please Enter valid email id" 
                    style="color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="g"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px; height: 29px;">
                <asp:Label ID="Label12" runat="server" Text="Batch"></asp:Label>
                <br />
            </td>
            <td style="height: 29px">
                <asp:DropDownList ID="Batch" runat="server">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="Batch" ErrorMessage="*" 
                    style="color: #FF0000" ValidationGroup="g"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <tr>
            <td style="width: 166px; margin-left: 320px; height: 29px;">
                <asp:Label ID="Label16" runat="server" Text="Currently Working in"></asp:Label>
                <br />
            </td>
            <td style="height: 29px">
                <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label17" runat="server" Text="Possition"></asp:Label>
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtposition" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Button ID="btnsaveprofile" runat="server" Text="SaveProfile" 
                    onclick="reg_button_Click" ValidationGroup="g" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  
  </div>
  </div>
  </div>
</asp:Content>

