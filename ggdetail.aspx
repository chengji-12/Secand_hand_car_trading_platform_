<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ggdetail.aspx.cs" Inherits="ggdetail" %>

<%@ Register Src="qttop2.ascx" TagName="qttop2" TagPrefix="uc1" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc5" %>
<%@ Register Src="left3.ascx" TagName="left3" TagPrefix="uc4" %>
<%@ Register Src="left2.ascx" TagName="left2" TagPrefix="uc3" %>
<%@ Register Src="userlog.ascx" TagName="userlog" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Second hand car trading platform - News details</title>
    <link href="qtimages/CSS.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-size: 25pt}
-->
</style>
</head>
<body  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div style="text-align: center">
    <table id="__01" width="1001" height="1240" border="0" cellpadding="0" cellspacing="0">
<tr>
		<td height="93" colspan="2" background="qtimages/hsglanse_01.gif"><table width="100%" height="90" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="31%" height="18">&nbsp;</td>
            <td width="69%">&nbsp;</td>
          </tr>
          <tr>
            <td height="31">&nbsp;</td>
            <td valign="top"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">&nbsp;&nbsp;&nbsp;<span class="STYLE2">Secand hand car trading platform</span></div></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td height="40" colspan="2" background="qtimages/hsglanse_02.gif">
          <uc5:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td colspan="2">
            <uc1:qttop2 ID="Qttop2_1" runat="server" />
        </td>
	</tr>
	<tr>
		<td><table id="Table3" width="300" height="712" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td rowspan="3"><img src="qtimages/hsglanse_04_01.gif" width="19" height="712" alt=""></td>
            <td style="width: 285px">
                <uc2:userlog ID="Userlog1" runat="server" />
            </td>
          </tr>
          <tr>
            <td style="width: 285px"> 
                <uc3:left2 ID="Left2_1" runat="server" />
                <uc4:left3 ID="Left3_1" runat="server" />
            </td>
          </tr>
          
          <tr>
            <td style="width: 285px"><img src="qtimages/hsglanse_04_05.gif" width="281" height="27" alt=""></td>
          </tr>
        </table></td>
		<td style="width: 703px" valign="top"><table id="Table7" width="701" height="712" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="3"><img src="qtimages/hsglanse_05_01.gif" width="701" height="7" alt=""></td>
          </tr>
          <tr>
            <td width="8" height="705" rowspan="2" background="qtimages/hsglanse_05_02.gif">&nbsp;</td>
            <td valign="top"><table id="Table8" width="652" height="214" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td colspan="2" style="height: 1px" valign="top"><img src="qtimages/hsglanse_05_03_01.gif" width="652" height="11" alt=""><br /><table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 28px">
  <tr>
    <td background="qtimages/8.gif" style="height: 24px" align="left">&nbsp; &nbsp; current location：<a href="default.aspx">Home</a>&gt;&gt;<a href="newslist.aspx">News Center</a>&gt;&gt;Detail content</td>
  </tr>
</table>
                    <table border="0" height="381" width="100%">
                        <tr>
                            <td align="center" height="41">
                                <%=ntitle %>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td height="294" valign="top" align="left">
                                <%=ncontent %>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" heigh="38">
                                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:history.back();">Back</asp:HyperLink></td>
                        </tr>
                    </table>
                    </td>
              </tr>
            </table>
                    </td>
            <td width="41" height="705" rowspan="2" background="qtimages/hsglanse_05_04.gif">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="qtimages/hsglanse_05_09.gif" width="652" height="9" alt=""></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td height="123" colspan="2" align="center" background="qtimages/hsglanse_06.gif"><p class="STYLE1">&nbsp;</p>
	    <p class="STYLE1">Copyright:xxxx Phone:xxxxxxxx Student ID:10666177 </p>
      <p class="STYLE1">Supervisor:Steven School:xxxxxx  Major:Computing</p></td>
	</tr>
</table>
    </div>
    </form>
</body>
</html>
