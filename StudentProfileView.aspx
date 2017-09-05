<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentProfileView.aspx.cs" Inherits="StudentProfileView" %>

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
                <asp:Label ID="Label18" runat="server" Text="FirstName..!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label19" runat="server" Text="FirstName..!!"></asp:Label>
&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label20" runat="server" Text="FirstName..!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label21" runat="server" Text="FirstName..!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label8" runat="server" Text="Email Id"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label22" runat="server" Text="FirstName..!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 166px; margin-left: 320px; height: 29px;">
                <asp:Label ID="Label12" runat="server" Text="Batch"></asp:Label>
                <br />
            </td>
            <td style="height: 29px">
                <asp:Label ID="Label23" runat="server" Text="FirstName..!!"></asp:Label>
            </td>
            </tr>
            <tr>
            <td style="width: 166px; margin-left: 320px; height: 29px;">
                <asp:Label ID="Label16" runat="server" Text="Currently Working in"></asp:Label>
                <br />
            </td>
            <td style="height: 29px">
                <asp:Label ID="Label24" runat="server" Text="FirstName..!!"></asp:Label>
                </td>
            </tr>
            <tr>
            <td style="width: 166px; margin-left: 320px">
                <asp:Label ID="Label17" runat="server" Text="Possition"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="Label25" runat="server" Text="FirstName..!!"></asp:Label>
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
                <asp:Button ID="btnsaveprofile" runat="server" Text="EditProfile" 
                    onclick="reg_button_Click" ValidationGroup="g" 
                    PostBackUrl="~/StudentProfile.aspx" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  
  </div>
  </div>
  </div>
</asp:Content>

