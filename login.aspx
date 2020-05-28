<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Secand hand car trading platform</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE3 {color: #528311; font-size: 12px; }
.STYLE4 {
	color: #42870a;
	font-size: 12px;
}
.STYLE5 {
	color: #72AC27;
	font-size: 26pt;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#e5f6cf">&nbsp;</td>
  </tr>
  <tr>
    <td height="608" background="images/login_03.gif"><table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="266" background="images/login_04.gif"><table width="72%" height="51" border="0" align="center">
          <tr>
            <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
              <div align="center" class="STYLE5">Secand hand car trading platform</div>
            </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="95"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="424" height="95" background="images/login_06.gif">&nbsp;</td>
            <td width="183" background="images/login_07.gif">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="21%" height="30"><div align="center"><span class="STYLE3">User</span></div></td>
                  <td width="79%" height="30">
                      <asp:TextBox ID="TextBox1" runat="server" Width="122px"></asp:TextBox></td>
                </tr>
                <tr>
                  <td height="30"><div align="center"><span class="STYLE3">Password</span></div></td>
                  <td height="30">
                      <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="122px"></asp:TextBox></td>
                </tr>
                <tr>
                  <td height="30">&nbsp;</td>
                  <td height="30">
                      &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="login" />
                      <input id="Reset1" type="reset" value="reset" /></td>
                </tr>
              </table>
              </td>

            <td width="255" background="images/login_08.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="247" valign="top" background="images/login_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="56%">&nbsp;</td>
            <td width="22%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="44%" height="20">&nbsp;</td>
                <td width="56%" class="STYLE4">Version <%=DateTime.Now.Date.Year.ToString().Trim() %> V1.0 </td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#a2d962">&nbsp;</td>
  </tr>
</table>
    
    </div></form>
</body>
</html>
