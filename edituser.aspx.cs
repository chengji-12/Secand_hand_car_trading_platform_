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

public partial class edituser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"].ToString().Trim() != "Super Admin")  //判断session值,如果是超级管理员,则此页可用,如果不是,则给出对话框提示.
        {
            Response.Write("<script>javascript:alert('Sorry ,you dont have right');history.back();</script>");
            Response.End();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        //sql语句意思为:向表allusers中插入新数据
        sql = "insert into allusers(username,pwd) values('" + username.Text.ToString().Trim() + "','" + pwd1.Text.ToString().Trim() + "')";
        new Class1().hsgexucute(sql); //将sql语句执行一次,调用class1.cs中的hsgexecute函数
        Response.Write("<script>javascript:alert('Add Success');</script>"); //执行成功,给出提示
    }
}