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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.ToString().Trim() == "" || TextBox1.Text.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('Please enter all');history.back();</script>");
            Response.End();
        }
        string sql;

        sql = "select * from allusers where username='" + TextBox1.Text.ToString().Trim() + "' and pwd='" + TextBox2.Text.ToString().Trim() + "'";

        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        // result = new TestOnline.Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                Session["username"] = TextBox1.Text.ToString().Trim();


                Session["role"] = result.Tables[0].Rows[0]["cx"].ToString().Trim();


                Response.Redirect("main.aspx");
            }
            else
            {
                Response.Write("<script>javascript:alert('Sorry,password is not right');</script>");
            }
        }
        else
        {
            Response.Write("<script>javascript:alert('Sorry, the system is wrong, please do not operate beyond your authority!');</script>");
        }
    }
}
