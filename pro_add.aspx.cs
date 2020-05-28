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

public partial class pro_add : System.Web.UI.Page
{
    public string fname;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            string sql;
            sql = "select * from alllb order by id desc";
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
                int k = 0;
                for (k = 0; k < result.Tables[0].Rows.Count; k++)
                {
                    lb.Items.Add(result.Tables[0].Rows[k]["lb"].ToString().Trim());
                }

            }
        }
    }


    private void hsgupload()
    {
        if (UploadFile.Value != null)
        {
            string nam = UploadFile.PostedFile.FileName;
            //取得文件名(抱括路径)里最后一个"."的索引
            int i = nam.LastIndexOf(".");
            //取得文件扩展名
            string newext = nam.Substring(i);
            //这里我自动根据日期和文件大小不同为文件命名,确保文件名不重复
            Random rnd = new Random();
            int n = rnd.Next(1000, 9999);
            string newname = DateTime.Now.Year.ToString().Trim() + DateTime.Now.Month.ToString().Trim() + DateTime.Now.Day.ToString().Trim() + DateTime.Now.Hour.ToString().Trim() + DateTime.Now.Minute.ToString().Trim() + DateTime.Now.Second.ToString().Trim() + n.ToString().Trim();
            //保存文件到你所要的目录,这里是IIS根目录下的uploadfiles目录
            //注意: 我这里用Server.MapPath()取当前文件的绝对目录.在asp.net里"\"必须用"\\"代替
            UploadFile.PostedFile.SaveAs(Server.MapPath("uppic/" + newname + newext));

            //得到这个文件的相关属性:文件名,文件类型,文件大小
            //string fname;
            fname = newname + newext;
            //Response.Write("<script>javascript:alert('"+fname+"');</script>");
            //fenc.Text=UploadFile.PostedFile.ContentType ;
            //fsize.Text=UploadFile.PostedFile.ContentLength.ToString();
            //Image1.ImageUrl = "http://localhost/web/news/uploadfiles/"+newname+newext;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (mc.Text.ToString().Trim() != "")
        {
            double je3, je4;
            try
            {

                je3 = Convert.ToDouble(je.Text.ToString().Trim());

            }
            catch
            {
                Response.Write("<script>javascript:alert('The original price of goods must be digital');</script>");
                return;
            }

            try
            {

                je4 = Convert.ToDouble(je2.Text.ToString().Trim());

            }
            catch
            {
                Response.Write("<script>javascript:alert('The current price of goods must be digital');</script>");
                return;
            }
            if (UploadFile.Value != null && UploadFile.Value != "")
            {
                hsgupload();
            }
            string sql;


            //sql = "insert into allpro(mc,lb,price1,price2,fn,content,addby,shuliang) values('" + mc.Text.ToString().Trim() + "','" + lb.SelectedItem.ToString().Trim() + "'," + je3 + "," + je4 + ",'" + fname + "','" + content.Text.ToString().Trim() + "','" + Session["username"].ToString().Trim() + "'," + shuliang.Text.ToString().Trim() + ")";
            sql = "insert into allpro(mc,lb,price1,price2,fn,content,addby,shuliang,output,mil,color,seat,brand) values('" + mc.Text.ToString().Trim() + "','" + lb.SelectedItem.ToString().Trim() + "'," + je3 + "," + je4 + ",'" + fname + "','" + content.Text.ToString().Trim() + "','" + Session["username"].ToString().Trim() + "','"+shuliang.Text.ToString().Trim() + "','" + Output.SelectedItem.ToString().Trim() + "','" + Mileage.SelectedItem.ToString().Trim() + "','" + Color.SelectedItem.ToString().Trim() + "','" + Seat.SelectedItem.ToString().Trim() + "','" + Brand.SelectedItem.ToString().Trim() + "')";


            int result;
            result = new Class1().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('Added successfully');</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('" + sql.ToString() + "');</script>");
                Response.Write("<script>javascript:alert('System error');</script>");
                
            }
        }
        else
        {
            Response.Write("<script>javascript:alert('Please complete');</script>");
        }
    }
}
