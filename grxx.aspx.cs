using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class grxx : System.Web.UI.Page
{
    public string yonghuming, xingming, dianhua, shenfenzheng, youxiang, QQ, dizhi, xingbie;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //xingbie.Items.Add("male");
           // xingbie.Items.Add("female");
            string sql;
            sql = "select * from yonghuzhuce where yonghuming='" + Session["username"].ToString().Trim() + "'";
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                yonghuming = result.Tables[0].Rows[0]["yonghuming"].ToString().Trim();
                xingming = result.Tables[0].Rows[0]["xingming"].ToString().Trim(); 
                dianhua = result.Tables[0].Rows[0]["dianhua"].ToString().Trim(); 
                shenfenzheng = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim(); 
                youxiang = result.Tables[0].Rows[0]["youxiang"].ToString().Trim(); 
                QQ = result.Tables[0].Rows[0]["QQ"].ToString().Trim(); 
                dizhi = result.Tables[0].Rows[0]["dizhi"].ToString().Trim(); 
                xingbie = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();

            }
        }
    }

}
