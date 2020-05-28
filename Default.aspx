<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="qttop2.ascx" TagName="qttop2" TagPrefix="uc1" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc5" %>
<%@ Register Src="left3.ascx" TagName="left3" TagPrefix="uc4" %>
<%@ Register Src="left2.ascx" TagName="left2" TagPrefix="uc3" %>
<%@ Register Src="userlog.ascx" TagName="userlog" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Secand hand car trading platform</title>
    <link href="qtimages/CSS.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-size: 25pt}
    #Table10 {
        margin-top: 0px;
    }
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
            <td height="31"><div style="font-family:宋体; color:#f00; filter:Glow(Color=#000000,Strength=2); WIDTH: 183%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">Secand hand car trading platform</div></td>
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
		<td colspan="2" >
            <uc1:qttop2 ID="Qttop2_1" runat="server" />
        </td>
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
               <%-- <uc3:left2 ID="Left2_1" runat="server" />--%>
                <uc4:left3 ID="Left3_1" runat="server" />
            </td>
          </tr>
          
          <tr>
            <td style="width: 285px"><img src="qtimages/hsglanse_04_05.gif" width="281" height="27" alt=""></td>
          </tr>
        </table></td>
		<td style="width: 703px"><table id="Table7" width="701" height="712" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="3"><img src="qtimages/hsglanse_05_01.gif" width="701" height="7" alt=""></td>
          </tr>
          <tr>
            <td width="8" height="705" rowspan="6" background="qtimages/hsglanse_05_02.gif">&nbsp;</td>
            <td><table id="Table8" width="652" height="214" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td colspan="2"><img src="qtimages/hsglanse_05_03_01.gif" width="652" height="11" alt=""></td>
              </tr>
              <tr>
                <td  colspan="2" >
                    <table id="Table9"height="203" border="0" cellpadding="0" cellspacing="0">
                  
                              <tr>   <td height="27" > <img src="qtimages/111.gif" height="27" alt="" style="width: 413px"><td >&nbsp;</td></tr>
                       </tr>
                       
                      <td>
                          <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" Height="130px" Width="100%">
                              <Columns>
                                  <asp:TemplateColumn HeaderText="ID">
                                      <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "id") %>
                                      </ItemTemplate>
                                      <HeaderStyle Width="30px" />
                                  </asp:TemplateColumn>
                                  <asp:TemplateColumn HeaderText="title">
                                      <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                                      <ItemTemplate>
                                          <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                            <%#DataBinder.Eval(Container.DataItem, "title") %>
                                          </a>
                                      </ItemTemplate>
                                      <HeaderStyle Width="200px" />
                                  </asp:TemplateColumn>
                                  <asp:BoundColumn DataField="addtime" HeaderText="Time"></asp:BoundColumn>
                              </Columns>
                          </asp:DataGrid>
                      </td>
                    </td>
                <td width="305" colspan="3">
                   
                 
                   
                    <table  style="width:100%;">
                        <tr>
                            <td>
                                 Choose the conditions you like!
                            </td>
                        </tr>
                        <tr>
                            <td align="right">Model：<asp:DropDownList
                        ID="lb" runat="server" Width="150px">
                    </asp:DropDownList>
                            </td>
                          
                        </tr>
                        <tr>
                            <td align="right">Color：<asp:DropDownList ID="Color" runat="server" Width="150px">
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
                         
                        </tr>
                        <tr>
                            <td align="right">Brand：<asp:DropDownList ID="Brand" runat="server" Width="150px">
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
                            </td>
                         
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"  />
                            </td>
                        </tr>
                    </table>
                   
                 
                </td>

                 </tr>
                        
                  <tr>
                    <td height="11"  colspan="3"><img src="qtimages/hsglanse_05_03_02_05.gif" alt="" style="width: 651px"></td>
                  </tr>
                </table>

                 
                </td>

              </tr>
            </table></td>
            <td width="41" height="705" rowspan="6" background="qtimages/hsglanse_05_04.gif">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="qtimages/hsglanse_05_05.gif" width="652" height="27" alt=""></td>
          </tr>
          <tr>
            <td><img src="qtimages/hsglanse_05_06.gif" width="652" alt="" style="height: 28px"></td>
          </tr>
          <tr>
            <td><table id="Table10" width="652" height="126" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td colspan="3"><img src="qtimages/hsglanse_05_07_01.gif" width="652" height="6" alt=""></td>
              </tr>
              <tr>
                <td rowspan="3"><img src="qtimages/hsglanse_05_07_02.gif" width="32" height="116" alt=""></td>
                <td style="height: 10px"><img src="qtimages/hsglanse_05_07_03.gif" width="591" height="10" alt=""></td>
                <td rowspan="3"><img src="qtimages/hsglanse_05_07_04.gif" width="29" height="116" alt=""></td>
              </tr>
              <tr>
                <td height="98" background="qtimages/7.gif">
		
												

				
				<table width="100%" height="98" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td id="demo1" style="height: 98px"><img src="uppic/2020527235384104.jpg" width="134" height="84"></td>
                    <td style="height: 98px"><img src="uppic/2020526183463422.jpg" width="136" height="84"></td>
                    <td style="height: 98px"><img src="uppic/2020527039106987.jpg" width="136" height="81"></td>
                    
					 <td id="demo2" style="height: 98px"></td>
                  </tr>
                  
                </table>
				
																	
				</td>
              </tr>
              <tr>
                <td><img src="qtimages/hsglanse_05_07_06.gif" width="591" height="8" alt=""></td>
              </tr>
              <tr>
                <td colspan="3"><img src="qtimages/hsglanse_05_07_07.gif" width="652" height="4" alt=""></td>
              </tr>
            </table>
                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" PageSize="4"
                    Width="100%">
                    <PagerStyle Mode="NumericPages" />
                    <Columns>
                        <asp:TemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <%#Container.ItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="title">
                            <ItemTemplate>
                                <a href='pro_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                    <%#DataBinder.Eval(Container.DataItem, "mc") %>
                                </a>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="lb" HeaderText="Model"></asp:BoundColumn>
                        <asp:BoundColumn DataField="output" HeaderText="Output Volume)"></asp:BoundColumn>
                        <asp:BoundColumn DataField="seat" HeaderText="The number of seats"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Images">
                            <ItemTemplate>
                                <a href='uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' target="_blank">
                                    <img height="30" src='uppic/<%#DataBinder.Eval(Container.DataItem, "fn") %>' width="30" border=0></a>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid></td>
          </tr>
          <tr>
            <td></td>
          </tr>
          <tr>
            <td><img src="qtimages/hsglanse_05_09.gif" width="652" height="9" alt=""></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td height="123" colspan="2" align="center" background="qtimages/hsglanse_06.gif"><p class="STYLE1">&nbsp;</p>
	    <p class="STYLE1">Copyright:xxxx Phone:xxxxxxxx Student ID:10666177 </p>
      <p class="STYLE1">Supervisor:Steven School:xxxxxx  Major:Computing</p></td>
	</tr>
</table>
    </div>
    </form>
</body>
</html>
