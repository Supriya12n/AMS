<%@ Page language="c#" Codebehind="Default.aspx.cs" AutoEventWireup="false" Inherits="SimpleChat._Default" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Default</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 268px; POSITION: absolute; TOP: 196px" cellSpacing="1"
				cellPadding="1" width="300" border="0">
				<TR>
					<TD>
						<asp:Label id="Label1" runat="server">GroupName</asp:Label></TD>
					<TD>
						<asp:TextBox id="TB_Channel" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage=" * Required" ControlToValidate="TB_Channel"></asp:RequiredFieldValidator></TD>
                        
				</TR>
				<TR>
					<TD>
						<asp:Label id="Label2" runat="server">UserName</asp:Label></TD>
					<TD>
						<asp:TextBox id="TB_Username" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="* Required" ControlToValidate="TB_Username"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD></TD>
					<TD>
						<asp:Button id="BT_Enter" class="btn btn-warning" runat="server" Text="Join Chat"></asp:Button></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
