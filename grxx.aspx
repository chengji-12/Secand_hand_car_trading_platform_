<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grxx.aspx.cs" Inherits="grxx" %>
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
						<div align="center"><font color="#ffffff">View personal information</font></div>
					</td>
				</tr>
				<tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Username:</FONT></td><td width='79%'><%=yonghuming %></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>name:</FONT></td><td width='79%'><%=xingming %></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>phone:</FONT></td><td width='79%'><%=dianhua %></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>id number:</FONT></td><td width='79%'><%=shenfenzheng %></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>email:</FONT></td><td width='79%'><%=youxiang %></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>Facebook:</FONT></td><td width='79%'><%=QQ %></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>address:</FONT></td><td width='79%'><%=dizhi %></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>gender:</FONT></td><td width='79%'><%=xingbie %></td></tr>
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:history.back();">back</asp:HyperLink></td>
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


