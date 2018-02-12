<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Main_Skin_Menu" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>导航页面</title>
    <script src="Js/Main.js" type="text/javascript"></script>
    <script type="text/javascript">
        loadCss(top._skinId,'Page.css');
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:TreeView ID="TreeView1" runat="server" ExpandDepth="1" ImageSet="News" 
            NodeIndent="10">
            <Nodes>
                <asp:TreeNode Text="管理员" Value="管理模板">
                    <asp:TreeNode Text="添加管理员用户" NavigateUrl="javascript:top.myTab.Cts('添加管理员用户','Admin.aspx')" Value="添加管理员用户"></asp:TreeNode>
                    <asp:TreeNode Text="查看注册会员" NavigateUrl="javascript:top.myTab.Cts('查看注册会员','MemberManager.aspx')" Value="查看注册会员"></asp:TreeNode>
                    <asp:TreeNode Text="查看管理员用户" NavigateUrl="javascript:top.myTab.Cts('查看管理员用户','AdminSelect.aspx')" Value="查看管理员用户"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="商品管理" Value="管理模板">
                    <asp:TreeNode Text="添加商品管理" NavigateUrl="javascript:top.myTab.Cts('添加商品管理','CloseAdd.aspx')" Value="添加商品管理"></asp:TreeNode>
                    <asp:TreeNode Text="查看商品管理" NavigateUrl="javascript:top.myTab.Cts('查看商品管理','CloseSelect.aspx')" Value="查看商品管理"></asp:TreeNode>
             
                </asp:TreeNode>
                <asp:TreeNode Text="分类管理" Value="管理模板">
                    <asp:TreeNode Text="添加大分类" NavigateUrl="javascript:top.myTab.Cts('添加大分类管理','CatelogAdd.aspx')" Value="添加大分类"></asp:TreeNode>
                    <asp:TreeNode Text="添加子分类" NavigateUrl="javascript:top.myTab.Cts('添加子分类管理','ProductAdd.aspx')" Value="添加子分类"></asp:TreeNode>
                    <asp:TreeNode Text="查看分类管理" NavigateUrl="javascript:top.myTab.Cts('查看分类管理','CategorySel.aspx')" Value="查看全部分类"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="订单管理" Value="管理模板">
                
                    <asp:TreeNode Text="订单管理" NavigateUrl="javascript:top.myTab.Cts('订单分类管理','OrderSelect.aspx')" Value="查看订单管理"></asp:TreeNode>
                </asp:TreeNode>
              
                  <asp:TreeNode Text="用户留言管理" Value="管理模板">
                   
                    <asp:TreeNode Text="查看留言管理" NavigateUrl="javascript:top.myTab.Cts('查看留言管理','UserMessage.aspx')" Value="查看留言管理"></asp:TreeNode>
                </asp:TreeNode>
       
            </Nodes>
            <ParentNodeStyle Font-Bold="False" />
            <HoverNodeStyle Font-Underline="True" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" 
                VerticalPadding="0px" />
            <NodeStyle Font-Names="Arial" Font-Size="10pt" ForeColor="Black" 
                HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </form>
</body>
</html>
