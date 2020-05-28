<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuzhuce_add.aspx.cs" Inherits="yonghuzhuce_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title><script language="javascript" src="js/Calendar.js"></script>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="100%" align="center"
				borderColorLight="#145aa0" border="1">
				<tr bgColor="#4296e7">
					<td colSpan="2">
						<div align="center"><font color="#ffffff">Add user register</font></div>
					</td>
				</tr>
				
			<tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>User name:</FONT></td><td width='79%'><asp:TextBox ID='yonghuming' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Password:</FONT></td><td width='79%'><asp:TextBox ID='mima' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Name:</FONT></td><td width='79%'><asp:TextBox ID='xingming' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Phone:</FONT></td><td width='79%'><asp:TextBox ID='dianhua' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>ID number:</FONT></td><td width='79%'><asp:TextBox ID='shenfenzheng' Width='395px' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Email:</FONT></td><td width='79%'><asp:TextBox ID='youxiang' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Facebook:</FONT></td><td width='79%'><asp:TextBox ID='QQ' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Address:</FONT></td><td width='79%'><asp:TextBox ID='dizhi' Width='395px' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Gender:</FONT></td><td width='79%'><asp:DropDownList ID='xingbie' runat='server'></asp:DropDownList></td></tr>
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="Add onclick="Button1_Click"></asp:button><FONT face="宋体">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="Refill" /></td>
				</tr>
				<tr>
					<td colSpan="2">
						<div align="center"></div>
					</td>
				</tr>
				<tr bgColor="#4296e7">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>
