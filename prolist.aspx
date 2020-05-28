<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prolist.aspx.cs" Inherits="prolist" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc5" %>
<%@ Register Src="left3.ascx" TagName="left3" TagPrefix="uc4" %>
<%@ Register Src="left2.ascx" TagName="left2" TagPrefix="uc3" %>
<%@ Register Src="userlog.ascx" TagName="userlog" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Secand hand car trading platform</title>
    <link href="qtimages/CSS.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-size: 25pt}
-->
</style>
</head>
<body  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div style="text-align: center">
    <table id="__01" width="1001" height="1240" border="0" cellpadding="0" cellspacing="0">
<tr>
		<td height="93" colspan="2" background="qtimages/hsglanse_01.gif"><table width="100%" height="90" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="31%" height="18">&nbsp;</td>
            <td width="69%">&nbsp;</td>
          </tr>
          <tr>
            <td height="31"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 215%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">&nbsp;&nbsp;&nbsp;<span class="STYLE2">Secand hand car trading platform</span></div></td>
            <td valign="top">&nbsp;</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td height="40" colspan="2" background="qtimages/hsglanse_02.gif">
          <uc5:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td colspan="2"><table id="Table1" width="1001" height="267" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td rowspan="3"><img src="qtimages/hsglanse_03_01.gif" width="29" height="267" alt=""></td>
            <td><img src="qtimages/hsglanse_03_02.gif" width="944" height="10" alt=""></td>
            <td rowspan="3"><img src="qtimages/hsglanse_03_03.gif" width="28" height="267" alt=""></td>
          </tr>
          <tr>
            <td><table id="Table2" width="944" height="28" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><img src="qtimages/hsglanse_03_04_01.gif" width="9" height="28" alt=""></td>
                <td width="675" background="qtimages/hsglanse_03_04_02.gif"><marquee behavior="scroll" onMouseOver="this.stop()" onMouseOut="this.start()" scrollamount="2" scrolldelay="6" direction="left" width="650" >Welome.wish you have a good experince!</marquee></td>
                <td width="246" background="qtimages/hsglanse_03_04_02.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="17%" class="lancu">Search:                      </td>
                    <td width="62%"><input type="text" name="textfield"></td>
                    <td width="21%"><input type="image" name="imageField" src="qtimages/1.gif"></td>
                  </tr>
                </table></td>
                <td><img src="qtimages/hsglanse_03_04_04.gif" width="14" height="28" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="229" background="qtimages/hsglanse_03_05.gif">&nbsp;</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td><table id="Table3" width="300" height="712" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td rowspan="3"><img src="qtimages/hsglanse_04_01.gif" width="19" height="712" alt=""></td>
            <td style="width: 285px">
                <uc2:userlog ID="Userlog1" runat="server" />
            </td>
          </tr>
          <tr>
            <td style="width: 285px"> 
                <uc3:left2 ID="Left2_1" runat="server" />
                <uc4:left3 ID="Left3_1" runat="server" />
            </td>
          </tr>
          
          <tr>
            <td style="width: 285px"><img src="qtimages/hsglanse_04_05.gif" width="281" height="27" alt=""></td>
          </tr>
        </table></td>
		<td style="width: 703px" valign="top"><table id="Table7" width="701" height="712" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="3"><img src="qtimages/hsglanse_05_01.gif" width="701" height="7" alt=""></td>
          </tr>
          <tr>
            <td width="8" height="705" rowspan="2" background="qtimages/hsglanse_05_02.gif">&nbsp;</td>
            <td valign="top"><table id="Table8" width="652" height="214" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td colspan="2" style="height: 1px" valign="top"><img src="qtimages/hsglanse_05_03_01.gif" width="652" height="11" alt=""><br /><table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 28px">
  <tr>
    <td background="qtimages/8.gif" style="height: 24px" align="left">&nbsp; &nbsp; Now location：<a href="default.aspx">Home</a>&gt;&gt;Cars display</td>
  </tr>
</table>
                  

                    
                    <table border="0" width="652">
            
                      <tr  align="right">
                        <td>Model：<asp:DropDownList
                        ID="lb" runat="server" Width="120px">
                    </asp:DropDownList>
                          </td>
                        <td>Output：<asp:DropDownList ID="Output" runat="server" Width="120px">
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
                          </td>
                          <th>Mileage：<asp:DropDownList ID="Mileage" runat="server" Width="120px">
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
                          </th>
                      </tr>
                        <tr   align="right">
                        <td>Color：<asp:DropDownList ID="Color" runat="server" Width="120px">
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
                          </td>
                        <td   align="right">Seat：<asp:DropDownList ID="Seat" runat="server" Width="120px">
                            <asp:ListItem></asp:ListItem>
                             <asp:ListItem>5s</asp:ListItem>
                            <asp:ListItem>2s</asp:ListItem>
                            <asp:ListItem>7s</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                          <th>Brand：<asp:DropDownList ID="Brand" runat="server" Width="120px">
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
                          </th>
                      </tr> <tr   align="right">
                        <td >Search：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                          </td>
                        <td   align="left">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View all" /></td>
                          <th>&nbsp;</th>
                      </tr>
                    </table>
                    <br />
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" PageSize="4"
                        Width="100%">
                        <PagerStyle Mode="NumericPages" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="ID">
                                <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Title">
                                <ItemTemplate>
                                    <a href='pro_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                        <%#DataBinder.Eval(Container.DataItem, "mc") %>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="lb" HeaderText="Model"></asp:BoundColumn>
                            <asp:BoundColumn DataField="output" HeaderText="Output"></asp:BoundColumn>
                            <asp:BoundColumn DataField="mil" HeaderText="Mileages"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Images">
                                <ItemTemplate>
                                    <a href='uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' target="_blank">
                                        <img height="30" src='uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' width="30" border=0></a>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid></td>
              </tr>
            </table>
                    </td>
            <td width="41" height="705" rowspan="2" background="qtimages/hsglanse_05_04.gif">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="qtimages/hsglanse_05_09.gif" width="652" height="9" alt=""></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td height="123" colspan="2" align="center" background="qtimages/hsglanse_06.gif"><p class="STYLE1">&nbsp;</p>
	    <p class="STYLE1">Copyright:xxxx Phone:xxxxxxxx Student ID:10666177  </p>
      <p class="STYLE1">Supervisor:Steven School:xxxxxx  Major:Computing</p></td>
	</tr>
</table>
    </div>
    </form>
</body>
</html>


