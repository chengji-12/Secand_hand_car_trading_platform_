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

public partial class pro_detail : System.Web.UI.Page
{
    public string nid, npic;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                string sql;

                sql = "select * from allpro where id=" + Request["id"].ToString().Trim();
                getdata(sql);
                sql = "select * from pinglun where proid="+Request["id"].ToString().Trim();
                getdata2(sql);
            }
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
                Label1.Text = result.Tables[0].Rows[0]["mc"].ToString().Trim();
                Label2.Text = result.Tables[0].Rows[0]["seat"].ToString().Trim();
                Label3.Text = result.Tables[0].Rows[0]["output"].ToString().Trim();
                Label9.Text = result.Tables[0].Rows[0]["color"].ToString().Trim();
                Label8.Text = result.Tables[0].Rows[0]["mil"].ToString().Trim();
                npic = result.Tables[0].Rows[0]["fn"].ToString().Trim();
                nid = result.Tables[0].Rows[0]["id"].ToString().Trim();
                Label7.Text = result.Tables[0].Rows[0]["lb"].ToString().Trim();
                Label6.Text = result.Tables[0].Rows[0]["brand"].ToString().Trim();
                Label25.Text = result.Tables[0].Rows[0]["content"].ToString().Trim();
            }
        }
    }
    private void getdata2(string sql)
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
        if (Session["username"] != null)
        {
            string sql;
            sql = "insert into pinglun(content,proid,addby) values('" + content.Text.ToString().Trim() + "','" + Request.QueryString["id"].ToString().Trim() + "','" + Session["username"].ToString().Trim() + "')";
            int result2;
            result2 = new Class1().hsgexucute(sql);
            if (result2 == 1)
            {
                Response.Write("<script>javascript:alert('Comment successful');location.href='pro_detail.aspx?id=" + Request.QueryString["id"].ToString().Trim() + "';</script>");
                Response.End();
            }
            else
            {
                Response.Write("<script>javascript:alert('System error');</script>");
            }
        }
        else
        {
            Response.Write("<script>javascript:alert('Sorry, please log in first!');location.href='pro_detail.aspx?id=" + Request.QueryString["id"].ToString().Trim() + "';</script>");
            Response.End();
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("gwc.aspx?id=" + Request.QueryString["id"].ToString().Trim() + "&kc=" + Label6.Text.ToString().Trim() + "&shuliang=" + shuliang.Text.ToString().Trim());
    }
}
