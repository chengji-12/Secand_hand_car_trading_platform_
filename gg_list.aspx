﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gg_list.aspx.cs" Inherits="gg_list" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" style="width: 98%">
        <tr>
            <td align="left" style="height: 328px" valign=top>
                <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
                    cellpadding="4" cellspacing="0" style="width: 100%">
                    <tr bgcolor="#4296e7">
                        <td colspan="1">
                            <div align="center">
                                <font color="#ffffff">
                                    <%=lbtxt %>
                                    List &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <a href="gg_add.aspx?lb=<%=lb%>">
                                        <font color="#ffffff">Add</font></a></font></div>
                        </td>
                    </tr>
                    <tr>
                        <td width="79%">
                            &nbsp;<asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False"
                                BorderColor="DodgerBlue" Height="139px" PageSize="6" Width="100%">
                                <SelectedItemStyle BackColor="Blue" />
                                <PagerStyle NextPageText="Page up" PrevPageText="Page down" />
                                <ItemStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateColumn HeaderText="ID">
                                        <ItemTemplate>
                                            <%#Container.ItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="title" HeaderText="title">
                                        <HeaderStyle Width="300px" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="addtime" HeaderText="addtime"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="Modify">
                                        <ItemTemplate>
                                            <a href='gg_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>Modify</a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Delete">
                                        <ItemTemplate>
                                            <a href='delgg.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=allgonggao&npage=gg_list.aspx&lb=<%=lb %>'
                                                onclick="return confirm('Sure to delete？')">Delete</a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid></td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            <div align="center">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#4296e7">
                        <td colspan="1">
                            &nbsp;</td>
                    </tr>
                </table>
                
                </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
