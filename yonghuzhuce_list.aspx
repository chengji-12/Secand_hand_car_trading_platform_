<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuzhuce_list.aspx.cs" Inherits="yonghuzhuce_list" %>
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
                        Registered users list</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp;User name：<asp:TextBox ID="bh" runat="server"></asp:TextBox>Name：<asp:TextBox ID="mc"
                            runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="Search" />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="6" Width="100%" >
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="宋体" ForeColor="Blue" HorizontalAlign="Right"
                                Mode="NumericPages" NextPageText="下一页" PrevPageText="上一页" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="ID">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField=yonghuming HeaderText='Username'></asp:BoundColumn><asp:BoundColumn DataField=mima HeaderText='Password'></asp:BoundColumn><asp:BoundColumn DataField=xingming HeaderText='name'></asp:BoundColumn><asp:BoundColumn DataField=dianhua HeaderText='Phone'></asp:BoundColumn><asp:BoundColumn DataField=shenfenzheng HeaderText='ID number'></asp:BoundColumn><asp:BoundColumn DataField=youxiang HeaderText='Email'></asp:BoundColumn><asp:BoundColumn DataField=QQ HeaderText='QQ'></asp:BoundColumn><asp:BoundColumn DataField=dizhi HeaderText='Address'></asp:BoundColumn><asp:BoundColumn DataField=xingbie HeaderText='Gender'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="Modify">
                                <ItemTemplate>
                                    <a href='yonghuzhuce_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'
                                       >Modify</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Delete">
                                 <ItemTemplate>
                                    <a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=yonghuzhuce&npage=yonghuzhuce_list.aspx'
                                        onclick="return confirm('Sure to delete？')">Delte</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">Print</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
