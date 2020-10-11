using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationAuthentication
{
    public partial class WebForm1254 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            DetailsView1.FindControl("FileUpload1");

            var fileUpload = (FileUpload)DetailsView1.FindControl("FileUpload1");
            string fileToSave = String.Empty;

            if (fileUpload.HasFile == true)
            {
                fileToSave = Server.MapPath("~/Image/" + fileUpload.FileName);
                fileUpload.SaveAs(fileToSave);
            }

            SqlDataSource1.UpdateParameters["ImageFile"].DefaultValue = "~/Image/" + fileUpload.FileName;
            SqlDataSource1.Update();

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            try
            {

                var fileUpload = (FileUpload)DetailsView1.FindControl("FileUpload2");
                string fileToSave = String.Empty;

                if (fileUpload.HasFile == true)
                {
                    fileToSave = Server.MapPath("~/Image/" + fileUpload.FileName);
                    fileUpload.SaveAs(fileToSave);
                }
                else
                {
                    return;
                }

                SqlDataSource1.InsertParameters["ImageUrl"].DefaultValue = "~/Image/" + fileUpload.FileName;


            }
            catch (Exception ex)
            {

            }
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            DetailsView1.DataBind();
        }
    }
}