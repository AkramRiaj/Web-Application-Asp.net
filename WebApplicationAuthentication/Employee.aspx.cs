using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationAuthentication
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }










       



  

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports/Report.aspx?EmployeeId=" + DropDownList1.SelectedValue.ToString());
        }
    }
}