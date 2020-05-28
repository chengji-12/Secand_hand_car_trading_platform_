<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left2.aspx.cs" Inherits="left2" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Left.css" type="text/css" rel="stylesheet" />
    <title>导航页面</title>
</head>
<body>
    <form id="form1" method="post" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server" ShowLines="True" ExpandDepth="1" Font-Bold="False"
                Font-Names="Agency FB">
                <SelectedNodeStyle BackColor="Transparent" ForeColor="Black" />
                <Nodes>
                    <asp:TreeNode Text="Personal information management" Value="个人信息管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="grxx.aspx" Target="hsgmain" Text="View personal information" Value="个人信息查看">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="yonghuzhuce_updt2.aspx" Target="hsgmain" Text="Personal information modification" Value="个人信息修改">
                        </asp:TreeNode>
                       
                    </asp:TreeNode>
                   <asp:TreeNode Text="Vehicle management" Value="商品管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="pro_add.aspx" Target="hsgmain" Text="Add a car" Value="商品添加"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="pro_list.aspx" Target="hsgmain" Text="Search a car" Value="商品查询"></asp:TreeNode>
                    </asp:TreeNode>
                  
                     <asp:TreeNode Text="Order management" Value="订单管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="dd_list2.aspx" Target="hsgmain" Text="Sales order management" Value="售出订单管理"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="dd_list.aspx" Target="hsgmain" Text="Buy shopping cart" Value="买入购物车"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Personal information management" Value="个人信息管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="mod2.aspx" Target="hsgmain" Text="Change Password" Value="修改密码"></asp:TreeNode>
                    </asp:TreeNode>
                   
                   <%-- <asp:TreeNode NavigateUrl="~/logout.aspx" Text="退出系统" Value="退出系统" Target="_parent"></asp:TreeNode>--%>
                </Nodes>
                <NodeStyle Font-Size="X-Small" ForeColor="Black" />
            </asp:TreeView>
            &nbsp;
        </div>
    </form>
</body>
</html>
