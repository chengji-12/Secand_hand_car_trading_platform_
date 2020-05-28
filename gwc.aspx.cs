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

public partial class gwc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql;
        if (Session["username"] == null)
        {
            Response.Write("<script>javascript:alert('Sorry, please log in first!');history.back();</script>");
            Response.End();
        }
        else
        {

            if (Request.QueryString["id"] != null)
            {
                //if (int.Parse(Request.QueryString["kc"].ToString().Trim()) < int.Parse(Request.QueryString["shuliang"].ToString().Trim()))
                //{
                //    Response.Write("<script>javascript:alert('库存不足');history.back();</script>");
                //    Response.End();
                //}
                //else
                //{
                    sql = "insert into gwc(proid,username,shuliang) values(" + Request["id"].ToString().Trim() + ",'" + Session["username"].ToString().Trim() + "'," + Request.QueryString["shuliang"].ToString().Trim() + ")";
                    int result2;
                    result2 = new Class1().hsgexucute(sql);
                    sql = "update allpro set shuliang=shuliang-" + Request.QueryString["shuliang"].ToString().Trim() + "";
                    result2 = new Class1().hsgexucute(sql);
                    if (result2 == 1)
                    {
                        //Session["nuser"]=username.Text.ToString().Trim();
                        Response.Write("<script>javascript:alert('This product has been successfully collected');location.href='default.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script>javascript:alert('System error');</script>");
                    }
                //}
            }
        }

        if (!IsPostBack)
        {
            sql = "select gwc.shuliang, gwc.zt, gwc.id,khusers.username,allpro.mc,allpro.lb,allpro.price1,allpro.price2,allpro.fn,gwc.addtime from gwc,khusers,allpro where gwc.username='" + Session["username"].ToString().Trim() + "' and gwc.username=khusers.username and allpro.id=gwc.proid";
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

                int ab = 0, k = 0;
                float cd = 0;
                for (k = 0; k < result.Tables[0].Rows.Count; k++)
                {
                    ab = ab + 1;
                    cd = cd + float.Parse(result.Tables[0].Rows[k]["price2"].ToString().Trim());
                }
                Label1.Text = "sum" + ab + "record" + cd + "yuan";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
            }
        }
    }
}
