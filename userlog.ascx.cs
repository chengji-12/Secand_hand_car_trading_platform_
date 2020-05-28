﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class userlog : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        if (!IsPostBack)
        {
            cx.Items.Add("普通用户");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userreg.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from yonghuzhuce where yonghuming='" + TextBox1.Text.ToString().Trim() + "' and mima='" + TextBox2.Text.ToString().Trim() + "' ";
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                Session["username"] = TextBox1.Text.ToString().Trim();
                Session["role"] = "普通用户";
                Session["userip"] = Page.Request.UserHostAddress;
                Response.Write("<script>javascript:alert('Login succeeded!');location.href='default.aspx';</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('Login failed, wrong user name or password');location.href='default.aspx';</script>");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}
