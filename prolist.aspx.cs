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

public partial class prolist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql;
        
        if (!IsPostBack)
        {
            lb.Items.Add("所有");
            //string sql;
            sql = "select * from alllb order by id desc";
            getdata2(sql);
        
            if (Request.QueryString["lb"] == null)
            {
               
                sql = "select * from allpro where 1=1";
            }
            else
            {
                if (Request.QueryString["lb"].ToString().Trim() == "")
                {
                    sql = "select * from allpro where 1=1";
                }
                else
                {
                    if (Request.QueryString["lb"].ToString().Trim() == "所有")
                    {
                        sql = "select * from allpro where 1=1";
                    }
                    else
                    {
                        sql = "select * from allpro where lb like '%" + Request.QueryString["lb"].ToString().Trim().Substring(0, 2) + "%'";
                    }
                }
            }
            if (Request.QueryString["pn"] == null)
            {

            }
            else
            {
                if (Request.QueryString["pn"].ToString().Trim() != "")
                {
                    sql = sql + " and mc like '%" + Request.QueryString["pn"].ToString().Trim() + "%'";
                }
            }
            if (Request.QueryString["seat"] != null)
            {
               
                if (Request.QueryString["seat"].ToString().Trim() != "")
                {
                   // out1 = Request.QueryString["seat"].ToString().Trim();
                 //   Response.Write("<script>javascript:alert('" + out1 + "');history.back();</script>");
                   
                    sql = sql + " and seat like '%" + Request.QueryString["seat"].ToString().Trim() + "%'";
                    //Response.Write("<script>javascript:alert('" + out1 + "');history.back();</script>");
                }
                   
            }
            if (Request.QueryString["output"] != null)
            {

                
                //Response.End();
                if (Request.QueryString["output"].ToString().Trim() != "")
                {

                    sql = sql + " and output like '%" + Request.QueryString["output"].ToString().Trim() + "%'";
                    // Response.Write("<script>javascript:alert('" + Request.QueryString["output"] + "');history.back();</script>");
                    Response.Write("<script>javascript:alert('" + sql + "');history.back();</script>");
                }
            }
            if (Request.QueryString["brand"] != null)
            {
              
                // Response.Write("<script>javascript:alert('" + out1 + "');history.back();</script>");
                //Response.End();
                if (Request.QueryString["brand"].ToString().Trim() != "")
                {
                    sql = sql + " and brand like '%" + Request.QueryString["brand"].ToString().Trim() + "%'";
                    Response.Write("<script>javascript:alert('" + sql + "');history.back();</script>");
                }

            }
            if (Request.QueryString["color"] != null)
            {
              
                // Response.Write("<script>javascript:alert('" + out1 + "');history.back();</script>");
                //Response.End();
                if (Request.QueryString["color"].ToString().Trim() != "")
                {
                    sql = sql + " and color like '%" + Request.QueryString["color"].ToString().Trim() + "%'";
                }

            }
            if (Request.QueryString["mil"] != null)
            {
              
                // Response.Write("<script>javascript:alert('" + out1 + "');history.back();</script>");
                //Response.End();
                if (Request.QueryString["mil"].ToString().Trim() != "")
                {
                    sql = sql + " and mil like '%" + Request.QueryString["mil"].ToString().Trim() + "%'";
                }

            }
            sql = sql + " order by id desc";
            
            getdata(sql);
            // DropDownList1.Items.Add("全部");
            //string sql;
            // sql = "select * from alllb order by id desc";
            //getdata2(sql);
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
        Response.Redirect("prolist.aspx?pn=" + TextBox1.Text.ToString().Trim() + "&lb=" + lb.SelectedItem.ToString().Trim() + "&output=" + Output.Text.ToString().Trim() + "&mil=" + Mileage.Text.ToString().Trim() + "&color=" + Color.Text.ToString().Trim() + "&seat=" + Seat.Text.ToString().Trim() + "&brand=" + Brand.Text.ToString().Trim());

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("prolist.aspx");
    }
    private void getdata2(string sql)
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
