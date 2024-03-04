using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace portfolio_mn
{
    public partial class adminPanel : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindServices();
            }
        }

        protected void InsertService(object sender, EventArgs e)
        {
            string serviceId = txtserviceId.Text;
            string title = txtTitle.Text;
            string icon = txtIcon.Text;
            string description = txtDescription.Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO service (title, icon, p, serviceId) VALUES (@Title, @Icon, @Description, @serviceid)", con))
                {
                    cmd.Parameters.AddWithValue("@Title", title);
                    cmd.Parameters.AddWithValue("@Icon", icon);
                    cmd.Parameters.AddWithValue("@Description", description);
                    cmd.Parameters.AddWithValue("@serviceid", serviceId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindServices();
        }

        protected void EditService(object sender, GridViewEditEventArgs e)
        {
            gvServices.EditIndex = e.NewEditIndex;
            BindServices();
        }

        protected void CancelEditService(object sender, GridViewCancelEditEventArgs e)
        {
            gvServices.EditIndex = -1;
            BindServices();
        }

        protected void UpdateService(object sender, GridViewUpdateEventArgs e)
        {
            string serviceId = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditserviceId")).Text;
            string title = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditTitle")).Text;
            string icon = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditIcon")).Text;
            string description = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditDescription")).Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE services SET title = @Title, icon = @Icon, p = @Description WHERE serviceId = @ServiceId", con))
                {
                    cmd.Parameters.AddWithValue("@Title", title);
                    cmd.Parameters.AddWithValue("@Icon", icon);
                    cmd.Parameters.AddWithValue("@Description", description);
                    cmd.Parameters.AddWithValue("@ServiceId", serviceId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvServices.EditIndex = -1;
            BindServices();
        }

        protected void DeleteService(object sender, GridViewDeleteEventArgs e)
        {
            if (gvServices.DataKeys[e.RowIndex].Value != DBNull.Value)
            {
                int serviceId = Convert.ToInt32(gvServices.DataKeys[e.RowIndex].Value);

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM services WHERE serviceId = @ServiceId", con))
                    {
                        cmd.Parameters.AddWithValue("@ServiceId", serviceId);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                BindServices();
            }
        }

        private void BindServices()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM services", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvServices.DataSource = dt;
                        gvServices.DataBind();
                    }
                }
            }
        }
    }
}
