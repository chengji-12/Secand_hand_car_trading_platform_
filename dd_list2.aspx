<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dd_list2.aspx.cs" Inherits="dd_list2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
	<LINK href="qtimages/main.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT>
			<br>
			<table cellSpacing="0" borderColorDark="#c6dbe7" cellPadding="2" align="center"
				borderColorLight="#092094" border="1" style="width: 100%">
				<tr>
					<td>
                        Managing my selling list</td>
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
								<asp:BoundColumn DataField="yonghuming" HeaderText="Buyer name">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:BoundColumn>
								<asp:BoundColumn DataField="mc" HeaderText="Title">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:BoundColumn>
								<asp:BoundColumn DataField="lb" HeaderText="Model">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:BoundColumn>
								<asp:BoundColumn DataField="output" HeaderText="Output Volume">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:BoundColumn>
								<asp:TemplateColumn HeaderText="Images">
									<ItemTemplate>
										<a href='/uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' target=_blank ><img src='uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' width=60 height=60 border=0></a>
									</ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
								</asp:TemplateColumn>
								<asp:BoundColumn DataField="color" HeaderText="Color">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="seat" HeaderText="The number of seats">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:BoundColumn>
                                <%--<asp:TemplateColumn HeaderText="The number of seats">
                                <ItemTemplate>
										<a href='dd_list2.aspx?ztid=<%#DataBinder.Eval(Container.DataItem, "id") %>&yuan=<%#DataBinder.Eval(Container.DataItem, "zt") %>' onclick="return confirm('Are you sure you want to do this？')">
											<%#DataBinder.Eval(Container.DataItem, "zt") %></a>
									</ItemTemplate>
                                </asp:TemplateColumn>--%>
                                <asp:BoundColumn DataField="mil" HeaderText="Mileage"></asp:BoundColumn>
								<asp:TemplateColumn HeaderText="Delete">
									<ItemTemplate>
										<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=gwc&npage=dd_list2.aspx' onclick="return confirm('sure to delete？')">
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
