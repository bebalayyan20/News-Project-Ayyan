using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace NewsAF
{
    public partial class AddBCOM : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\HA6\\NewsAF\\App_Data\\bcom.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        public AddBCOM()
        {
            InitializeCulture();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/images1/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images1/" + Path.GetFileName(FileUpload1.FileName);
            cn.Open();
            cmd.CommandText = "insert into [bcom](headline, date , location , image , description) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + link + "','" + TextBox4.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            Response.Write("<h2><center>News With Headline " + TextBox1.Text + "<br> Is Added Successfully with Date " + TextBox2.Text + "</h2></center>");
            cn.Close();
        }
    }
}