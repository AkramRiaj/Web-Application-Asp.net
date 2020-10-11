using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationAuthentication.Reports
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int EmployeeId = Convert.ToInt32(Request.QueryString["EmployeeId"].ToString());

            DataSet ds = getData(EmployeeId);
            //ds.WriteXml(@"C:\Users\Administrator\Desktop\WebApplicationAuthentication\WebApplicationAuthentication\Reports\EmployeeInfo.xsd", XmlWriteMode.WriteSchema);

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("~/Reports/EmployeeReport.rpt"));
            rd.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rd;
        }

        private DataSet getData(int EmployeeID)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeInfoConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter())
                {
                    string sql = @"  SELECT e.* , d.DepartmentName , j.JobTitle from  EmployeeInfo.dbo.Employee e inner join EmployeeInfo.dbo.Department d on e.DepartmentID = d.DepartmentID inner join  EmployeeInfo.dbo.Job j
                    on j.JobID = e.JobID where e.EmployeeID =@EmployeeID";


                              da.SelectCommand = new SqlCommand(sql, conn);
                             da.SelectCommand.CommandType = CommandType.Text;
                             da.SelectCommand.Parameters.Add("@EmployeeID", SqlDbType.Int).Value = EmployeeID;

                    DataSet ds = new DataSet();
                    da.Fill(ds, "EmployeeInfo");

                    return ds;

                }
            }
        }
    }
}
