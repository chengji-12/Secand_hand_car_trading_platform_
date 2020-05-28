<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pro_list.aspx.cs" Inherits="pro_list" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
	<LINK href="qtimages/main.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT>
			<br>
			<table cellSpacing="0" borderColorDark="#c6dbe7" cellPadding="2" width="100%" align="center"
				borderColorLight="#092094" border="1">
				<tr>
					<td>List</td>
				</tr>
				<tr bgColor="#5ea5e6">
					<td noWrap width="6%"><asp:datagrid id="DataGrid1" runat="server" Width="100%" AutoGenerateColumns="False" BorderColor="DodgerBlue" PageSize="6">
							<SelectedItemStyle BackColor="Blue"></SelectedItemStyle>
							<ItemStyle BackColor="White"></ItemStyle>
							<Columns>
								<asp:TemplateColumn HeaderText="ID">
									<ItemTemplate>
										<%#Container.ItemIndex+1 %>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:BoundColumn DataField="mc" HeaderText="Title"></asp:BoundColumn>
								<asp:BoundColumn DataField="lb" HeaderText="Model"></asp:BoundColumn>
								<asp:TemplateColumn HeaderText="Images">
									<ItemTemplate>
										<a href='uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' target=_blank ><img src='uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' width=60 height=60 border=0></a>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:BoundColumn DataField="addtime" HeaderText="Time"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Check comment">
                                <ItemTemplate>
										<a href='pinglun_list.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' >Check comment</a>
									</ItemTemplate>
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Modify">
									<ItemTemplate>
										<a href='pro_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' >Modify</a>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Delete">
									<ItemTemplate>
										<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=allpro&npage=pro_list.aspx' onclick="return confirm('Sure to delete？')">
											Delete</a>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<PagerStyle NextPageText="Page up" PrevPageText="Page down"></PagerStyle>
						</asp:datagrid></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
