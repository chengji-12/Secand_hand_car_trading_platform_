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

public partial class dd_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql;
           
            sql = "select gwc.shuliang,gwc.zt,gwc.id,yonghuzhuce.yonghuming,allpro.mc,allpro.lb,allpro.price1,allpro.price2,allpro.fn,gwc.addtime from gwc,yonghuzhuce,allpro where gwc.username=yonghuzhuce.yonghuming and allpro.id=gwc.proid and gwc.username='" + Session["username"].ToString().Trim() + "'";
            
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
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
            }
        }
    }
}
