<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pinglun_list.aspx.cs" Inherits="pinglun_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        The vehicle already has a list of comments</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BorderColor="#00FFFF"
                            PageSize="4" Width="100%">
                            <PagerStyle Mode="NumericPages" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="ID">
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                    </ItemTemplate>
                                    <HeaderStyle Width="30px" />
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="content" HeaderText="comment">
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Left" />
                                    <HeaderStyle Width="500px" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="addby" HeaderText="Reviewer">
                                    <HeaderStyle Width="50px" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="addtime" HeaderText="Time">
                                    <HeaderStyle Width="100px" />
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">Print this page</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
