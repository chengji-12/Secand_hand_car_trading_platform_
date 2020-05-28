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

public partial class _Default : System.Web.UI.Page
{
    public string sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        lb.Items.Add("All");
        //string sql;
        sql = "select * from alllb order by id desc";
        getdata3(sql);
        if (!IsPostBack)
        {
            sql = "select top 5 id,title,addtime from allgonggao where leibie='新闻中心'";
            getdata(sql);
            sql = "select top 7 * from allpro order by id desc";
            getdata2(sql);


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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("prolist.aspx?lb=" + lb.SelectedItem.ToString().Trim() + "&color=" + Color.Text.ToString().Trim() +  "&brand=" + Brand.Text.ToString().Trim());
        //Response.Write("<script>javascript:alert('" + lb.SelectedItem.ToString().Trim() + "');history.back();</script>");
       // Response.End();
    }
    private void getdata2(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid2.DataSource = result.Tables[0];
                DataGrid2.DataBind();
            }
            else
            {
                DataGrid2.DataSource = null;
                DataGrid2.DataBind();
            }
        }
    }
    private void getdata3(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                int k = 0;
                for (k = 0; k < result.Tables[0].Rows.Count; k++)
                {
                    lb.Items.Add(result.Tables[0].Rows[k]["lb"].ToString().Trim());
                }

            }
        }
    }

}
