<%@ Control Language="C#" AutoEventWireup="true" CodeFile="userlog.ascx.cs" Inherits="userlog" %>
<asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
    <table id="Table4" border="0" cellpadding="0" cellspacing="0" height="264" width="281">
        <tr>
            <td background="qtimages/hsglanse_04_04_01.gif" colspan="3" height="132">
                <table border="0" cellpadding="0" cellspacing="0" height="83" width="100%">
                    <tr>
                        <td height="17" width="27%">
                            &nbsp;</td>
                        <td class="lancu" width="73%">
                            User Login</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td background="qtimages/hsglanse_04_04_03.gif" width="26">
                &nbsp;</td>
            <td background="qtimages/6.gif" height="121" width="238">
                <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    

                    <tr>
                        <td style="text-align: left" width="29%">
                            ID:</td>
                        <td style="text-align: left" width="71%">
                            <asp:TextBox ID="TextBox1" runat="server" style="height:18px; width:130px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            Password:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="height:18px; width:130px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            Role:</td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="cx" runat="server" style="height:18px; width:130px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;">
                            </asp:DropDownList>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: left">
                            <asp:Button ID="Button1" runat="server" Text=" Loghin " OnClick="Button1_Click"  style="height:18px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"/>
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Register" style="height:18px;  border:solid 1px #cadcb2; font-size:12px; color:#81b432;" /></td>
                    </tr>
                </table>
            </td>
            <td background="qtimages/hsglanse_04_04_05.gif" width="17">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <img alt="" height="11" src="qtimages/hsglanse_04_04_06.gif" width="281" /></td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server" Height="50px" Width="125px">
        <table id="Table1" border="0" cellpadding="0" cellspacing="0" height="264" width="281">
            <tr>
                <td background="qtimages/hsglanse_04_04_01.gif" colspan="3" height="132">
                    <table border="0" cellpadding="0" cellspacing="0" height="83" width="100%">
                        <tr>
                            <td height="17" width="27%">
                                &nbsp;</td>
                            <td class="lancu" width="73%">
                                Login</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td background="qtimages/hsglanse_04_04_03.gif" width="26">
                    &nbsp;</td>
                <td background="qtimages/6.gif" height="121" width="238">
                    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    

                        <tr>
                            <td style="text-align: left" width="29%">
                                Username:</td>
                            <td style="text-align: left" width="71%"><%=Session["username"].ToString().Trim() %>
                                </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                IP:</td>
                            <td style="text-align: left"><%=Session["userip"].ToString().Trim() %>
                                </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                ROLE:</td>
                            <td style="text-align: left"><%=Session["role"].ToString().Trim()%>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="text-align: left">
                                <asp:Button ID="Button2" runat="server" Text=" Back  " OnClick="Button2_Click" Width="70px" />
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="User Center" Width="69px" /></td>
                        </tr>
                    </table>
                </td>
                <td background="qtimages/hsglanse_04_04_05.gif" width="17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <img alt="" height="11" src="qtimages/hsglanse_04_04_06.gif" width="281" /></td>
            </tr>
        </table>
    </asp:Panel>
