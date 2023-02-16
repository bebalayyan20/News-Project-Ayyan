using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NewsAF
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\HA6\\NewsAF\\App_Data\\Admin.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            string uid = txt_Username.Text;
            string pass = txt_password.Text;
            con.Open();
            string qry = "select * from [Admin] where (username)='" + uid + "' and password='" + pass + "'";
            SqlCommand lcmd = new SqlCommand(qry, con);
            SqlDataReader sdr = lcmd.ExecuteReader();
            if (sdr.Read())
            {
                Response.Redirect("Ahome.aspx");
            }
            else
            {
                Response.Write("<h1><center>Username / Password incorrect ..Try again</h1></center>");
            }
            con.Close();
        }
    }
}