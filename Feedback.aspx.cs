using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace NewsAF
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\HA6\\NewsAF\\App_Data\\Feedback.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        public Feedback()
        {
            InitializeCulture();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into [Feedback](name, email , feedback , recommend) values('" + fnametxt.Text + "','" + femailtxt.Text + "','" + feedbacktxt.Text + "','" + rectxt.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            Response.Write("<h2><center>Your Feedback is Successfully Uploaded <br> Thank You " + fnametxt.Text + "<br>for your valuable Feedback  </h2></center>");
            cn.Close();
        }
    }
}