using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;
using System.IO;


public partial class RegCrystal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\HA6\\NewsAF\\App_Data\\registration.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {
        SqlConnection cn = con;
        SqlDataAdapter da = new SqlDataAdapter("select name,email,password from register", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ReportDocument rpt = new ReportDocument();
        rpt.Load(Server.MapPath("CrystalReport2.rpt"));
        rpt.SetDataSource(ds.Tables["Table"]);
        CrystalReportViewer1.ReportSource = rpt;
        rpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Registered Users");
    }
}