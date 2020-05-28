<%@ Control Language="C#" AutoEventWireup="true" CodeFile="left3.ascx.cs" Inherits="left3" %>
<table id="__01" width="281" height="205" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="71" colspan="3" background="qtimages/hsglanse_04_03_01.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="20" >&nbsp;</td>
                    <td >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="22"  align=left>&nbsp;</td>
                    <td>
                        <strong>Friendship links</strong></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="qtimages/hsglanse_04_03_02.gif" width="31" height="117" alt=""></td>
                <td width="228" height="117" background="qtimages/2.gif">
                    <asp:DataGrid ID="DataGrid4" runat="server" AutoGenerateColumns="False" Height="130px"
                        ShowHeader="False" Width="100%">
                        <Columns>
                            <asp:TemplateColumn HeaderText="序号">
                                <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                <HeaderStyle Width="30px" />
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="网址">
                                <ItemTemplate>
                                    <a href='<%#DataBinder.Eval(Container.DataItem, "url") %>' target="_blank">
                                        <%#DataBinder.Eval(Container.DataItem, "mc") %>
                                    </a>
                                </ItemTemplate>
                                <HeaderStyle Width="200px" />
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Left" />
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid></td>
                <td><img src="qtimages/hsglanse_04_03_04.gif" width="22" height="117" alt=""></td>
              </tr>
              <tr>
                <td colspan="3"><img src="qtimages/hsglanse_04_03_05.gif" width="281" height="17" alt=""></td>
              </tr>
            </table>