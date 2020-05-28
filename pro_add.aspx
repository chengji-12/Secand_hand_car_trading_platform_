<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pro_add.aspx.cs" Inherits="pro_add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="60%" align="center"
				borderColorLight="#145aa0" border="1">
				<tr bgColor="#4296e7">
					<td colSpan="2">
						<div align="center"><font color="#ffffff">AddProduct</font></div>
					</td>
				</tr>
				<tr>
					<td noWrap width="30" style="WIDTH: 164px">
						<FONT face="宋体">Title:</FONT>
					</td>
					<td width="79%">
						<asp:textbox id="mc" runat="server" Width="304px"></asp:textbox></td>
				</tr>
				<TR>
					<TD style="WIDTH: 164px" noWrap width="164" height="25"><FONT face="宋体">Model:</FONT></TD>
					<TD width="59%" height="25">
						<asp:DropDownList id="lb" runat="server"></asp:DropDownList></TD>
				</TR>
                <TR>
					<TD style="WIDTH: 164px" noWrap width="164" height="25">Brand<FONT face="宋体">:</FONT></TD>
					<TD width="59%" height="25">
						<asp:DropDownList ID="Brand" runat="server" Width="120px">
                              <asp:ListItem></asp:ListItem>
                               <asp:ListItem>Ford</asp:ListItem>
                               <asp:ListItem>Audi</asp:ListItem>
                               <asp:ListItem>VOLKSWAGEN</asp:ListItem>
                               <asp:ListItem>BMW</asp:ListItem>
                               <asp:ListItem>Porsche</asp:ListItem>
                               <asp:ListItem>Nissan</asp:ListItem>
                               <asp:ListItem>Jaguar</asp:ListItem>
                               <asp:ListItem>Land Rover</asp:ListItem>
                               <asp:ListItem>Toyoto</asp:ListItem>
                               <asp:ListItem>Vauxhall</asp:ListItem>
                               <asp:ListItem>Honda</asp:ListItem>
                               <asp:ListItem>Aston Martin</asp:ListItem>
                               <asp:ListItem>Citroen</asp:ListItem>
                               <asp:ListItem>Jeep</asp:ListItem>
                               <asp:ListItem>Other</asp:ListItem>
                              </asp:DropDownList>
                          </TD>
				</TR>
                <TR>
					<TD style="WIDTH: 164px" noWrap width="164" height="25">Color<FONT face="宋体">:</FONT></TD>
					<TD width="59%" height="25">
						<asp:DropDownList ID="Color" runat="server" Width="120px">
                            <asp:ListItem></asp:ListItem>
                             <asp:ListItem>red</asp:ListItem>
                            <asp:ListItem>white</asp:ListItem>
                            <asp:ListItem>black</asp:ListItem>
                            <asp:ListItem>blue</asp:ListItem>
                            <asp:ListItem>yellow</asp:ListItem>
                            <asp:ListItem>purple</asp:ListItem>
                            <asp:ListItem>brown</asp:ListItem>
                            <asp:ListItem>green</asp:ListItem>
                            <asp:ListItem>orange</asp:ListItem>
                            <asp:ListItem>other</asp:ListItem>                        
                            </asp:DropDownList>
                          </TD>
				</TR>
                <TR>
					<TD style="WIDTH: 164px" noWrap width="164" height="25">Seat<FONT face="宋体">:</FONT></TD>
					<TD width="59%" height="25">
						<asp:DropDownList ID="Seat" runat="server" Width="120px">
                            <asp:ListItem></asp:ListItem>
                             <asp:ListItem>5s</asp:ListItem>
                            <asp:ListItem>2s</asp:ListItem>
                            <asp:ListItem>7s</asp:ListItem>
                            </asp:DropDownList>
                          </TD>
				</TR>

				<TR>
					<TD style="WIDTH: 164px" noWrap width="164" height="25">Output<FONT face="宋体">:</FONT></TD>
					<TD width="59%" height="25">
						<asp:DropDownList ID="Output" runat="server" Width="120px">
                       <%--     <asp:ListItem>MPV</asp:ListItem>
                            <asp:ListItem>Convertible</asp:ListItem>
                            <asp:ListItem>SUV</asp:ListItem>
                            <asp:ListItem>Estate</asp:ListItem>
                            <asp:ListItem>Coupe</asp:ListItem>
                            <asp:ListItem>Pickup</asp:ListItem>
                            <asp:ListItem>Hatchback</asp:ListItem>

                            <asp:ListItem>Saloon</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>      --%>    
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>1.4t</asp:ListItem>
                            <asp:ListItem>1.5t</asp:ListItem>
                            <asp:ListItem>1.6t</asp:ListItem>
                            <asp:ListItem>2.0t</asp:ListItem>
                            <asp:ListItem>2.5t</asp:ListItem>
                        </asp:DropDownList>
						<asp:TextBox id="je" runat="server" Visible="False">0</asp:TextBox>
                    </TD>
				</TR>
				<TR>
					<TD style="WIDTH: 164px" noWrap width="164" height="25">Mileage<FONT face="宋体">:</FONT></TD>
					<TD width="59%" height="25">
						<FONT face="宋体"><asp:DropDownList ID="Mileage" runat="server" Width="120px">
                              <asp:ListItem></asp:ListItem>
                               <asp:ListItem>0-1000miles</asp:ListItem>
                              <asp:ListItem>1000-2000miles</asp:ListItem>
                              <asp:ListItem>2000-3000miles</asp:ListItem>
                              <asp:ListItem>3000-5000miles</asp:ListItem>
                              <asp:ListItem>5000-7000miles</asp:ListItem>
                              <asp:ListItem>7000-10000miles</asp:ListItem>
                              <asp:ListItem>10000-15000miles</asp:ListItem>
                              <asp:ListItem>15000-20000miles</asp:ListItem>
                              <asp:ListItem>up20000miles</asp:ListItem>
                              </asp:DropDownList>
                          </FONT>
						<asp:TextBox id="je2" runat="server" Visible="False">0</asp:TextBox>
                        <asp:TextBox ID="shuliang" runat="server" Visible="False"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 164px" noWrap width="164" height="25"><FONT face="宋体">Image of Car:</FONT></TD>
					<TD width="59%" height="25"><INPUT id="UploadFile" type="file" size="50" name="UploadFile" runat="server"></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 164px; HEIGHT: 72px" noWrap width="164" height="72"><FONT face="宋体">Introduction:</FONT></TD>
					<TD style="HEIGHT: 72px" width="59%" height="72"><FONT face="宋体">
							<asp:TextBox id="content" runat="server" Width="328px" Height="93px" TextMode="MultiLine"></asp:TextBox></FONT></TD>
				</TR>
                
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="Add" onclick="Button1_Click"></asp:button><FONT face="宋体">&nbsp;</FONT>
						<asp:button id="Button2" runat="server" Text="Refill"></asp:button></td>
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
