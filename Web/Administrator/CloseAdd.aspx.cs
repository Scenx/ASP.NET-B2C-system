using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class Administrator_CloseAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BinDSelProduct();
    }


    protected void BinDSelProduct()
    {
        IList<ProductInfo> productList = new Product().GetProduct();

        selProduct.Items.Clear();
        foreach (ProductInfo product in productList)
        {
            selProduct.Items.Add(new ListItem(product.ProductName, product.ProductId));
        }

        selProduct.SelectedIndex = 0;

        

    }
    protected void btnCreateItem_Click(object sender, EventArgs e)
    {
        ItemInfo itemInfo = new ItemInfo();

        itemInfo.ItemName = ItemName.Value.ToString();
        itemInfo.ProductId = selProduct.Items[selProduct.SelectedIndex].Value.ToString();
        itemInfo.AgoraPrice = decimal.Parse(ItemAgoraPrice.Value);        
        itemInfo.MemberPrice = decimal.Parse(ItemMemberPrice.Value);
        itemInfo.VipPrice = decimal.Parse(ItemVipPrice.Value);
        itemInfo.Area = ItemArea.Value;
        itemInfo.Fresh = inputFresh.Value;
        itemInfo.Brand = ItemBrand.Value;
        itemInfo.Remnant = int.Parse(ItemRemant.Value);


        //获取大图片的数量
        int imageCount = new Item().GetTheItemCount() / 2;
        //获取图片存放路径地址

        string strBigImage = @"Img\big_0" + (imageCount+22) + ".jpg";
        string strSmallImage = @"Img\small_0" + (imageCount+22) + ".jpg";

        string strProductYesOrNot = selYesOrNot.Items[selYesOrNot.SelectedIndex].Value;

        itemInfo.txtBigImg = strBigImage;
        itemInfo.txtSmallImg = strSmallImage;
        itemInfo.Comment = strProductYesOrNot;

        //插入数据库
        if(new Item().InsertItem(itemInfo)) 
        {
            SaveImage(strBigImage, strSmallImage);
            WebHelper.ShowMsg(this, "创建成功");
        }


        //保存图片

       
    }


    protected void SaveImage(string BigImagePath, string smallImagePath)
    {
        string bigFileName = ItemBigImage.FileName;
        string smallFileName = ItemSmallImage.FileName;

        if (bigFileName.Trim().Length!=0 && smallFileName.Trim().Length != 0)
        {
            BigImagePath = Server.MapPath("~/Commodityimages/") + BigImagePath;
            smallFileName = Server.MapPath("~/Commodityimages/") + smallImagePath;
            ItemBigImage.PostedFile.SaveAs(BigImagePath);
            ItemSmallImage.PostedFile.SaveAs(smallFileName);
        }
    }

}
