<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="Left" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    <asp:TreeNode Text="System user management" Value="系统用户管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="edituser.aspx" Target="hsgmain" Text="User add" Value="用户添加">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="listuser.aspx" Target="hsgmain" Text="user management" Value="用户管理">
                        </asp:TreeNode>
                       
                    </asp:TreeNode>
                   <asp:TreeNode Text="News management" Value="新闻管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="gg_add.aspx?lb=1" Target="hsgmain" Text="News add" Value="新闻添加"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="gg_list.aspx?lb=1" Target="hsgmain" Text="News inquiry" Value="新闻查询"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Model management" Value="商品类别管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="lb_add.aspx" Target="hsgmain" Text="Model management" Value="商品类别管理"></asp:TreeNode>
                        
                        
                    </asp:TreeNode>
                     <asp:TreeNode Text="Registered user management" Value="注册用户管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="yonghuzhuce_list.aspx" Target="hsgmain" Text="Registered user management" Value="注册用户管理"></asp:TreeNode>
                    </asp:TreeNode>
                   
                 
                    <asp:TreeNode Text="Friendship link management" Value="友情链接管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="yqlj_add.aspx" Target="hsgmain" Text="Friendship link management" Value="友情链接管理"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Personal information management" Value="个人信息管理" SelectAction="Expand">
                        <asp:TreeNode NavigateUrl="mod.aspx" Target="hsgmain" Text="Change Password" Value="修改密码"></asp:TreeNode>
                    </asp:TreeNode>
                   
                   <%-- <asp:TreeNode NavigateUrl="~/logout.aspx" Text="Exit the system" Value="退出系统" Target="_parent"></asp:TreeNode>--%>
                </Nodes>
                <NodeStyle Font-Size="X-Small" ForeColor="Black" />
            </asp:TreeView>
            &nbsp;
        </div>
    </form>
</body>
</html>
