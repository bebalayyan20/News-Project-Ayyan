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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\HA6\\NewsAF\\App_Data\\registration.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        public register()
        {
            InitializeCulture();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into [register](name, email , password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            Response.Write("<h2><center>Hello  "+TextBox1.Text+"<br> Your Registration is Successful <br> with "+TextBox2.Text+"</h2></center>");
            cn.Close();

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}