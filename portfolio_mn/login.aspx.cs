using System;
using System.Configuration;
using System.Data.SqlClient;

namespace portfolio_mn
{
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void button_Click(object sender, EventArgs e)
        {
            string connectionString = strcon; // Replace with your actual connection string
            string username = this.username.Text;
            string password = this.password.Text;

            if (AuthenticateUser(connectionString, username, password))
            {
                // Redirect to the home page upon successful authentication
                Response.Redirect("Home.aspx");
            }
            else
            {
                // Display an error message if authentication fails
                error.Text = "Invalid username or password";
            }
        }

        private bool AuthenticateUser(string connectionString, string username, string password)
        {
            // Replace this with your actual database table and column names
            string query = "SELECT COUNT(*) FROM login WHERE username = @username AND password = @password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@password", password);
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    return count > 0;
                }
            }
        }
    }
}
