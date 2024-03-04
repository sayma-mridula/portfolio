using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.NetworkInformation;
using System.Xml.Linq;

namespace portfolio_mn
{
    public partial class Home : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                BindServices();
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // Your connection string from the Web.config file
           // string connectionString = ConfigurationManager.ConnectionStrings["portfolioConnectionString"].ConnectionString;

            // SQL query to insert data into the database
            string query = "INSERT INTO contacts (name, email, message) VALUES (@Name, @Email, @Message)";

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Add parameters to the query
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Message", message);

                    // Open the connection and execute the query
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Redirect to a thank you page or show a success message
            
        }

        private void BindServices()
        {
            string query = "SELECT Icon, Title, Details FROM services";

            using (SqlConnection connection = new SqlConnection(strcon))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();

                adapter.Fill(dataTable);
                ServicesRepeater.DataSource = dataTable;
                ServicesRepeater.DataBind();
            }
        }
    }
}