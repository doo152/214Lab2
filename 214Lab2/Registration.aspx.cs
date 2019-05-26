using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _214Lab2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clear_Click(object sender, EventArgs e)
        {
            username.Text = "";
            Password.Text = "";
            Password1.Text = "";
            fname.Text = "";
            lname.Text = "";
            city.Text = "";
            phone.Text = "";
            email.Text = "";

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string user = username.Text;
            string pwd = Password.Text;
            string cpwd = Password1.Text;
            string firstname = fname.Text;
            string lastname = lname.Text;
            string cityname = city.Text;
            string telephone = phone.Text;
            string Email = email.Text;
            string sql = "Insert into Customer" + 
                        "([FirstName],[LastName],[Phone],[City],[username],[passwd],[email]" +
                        "Values(@fname, @lname, @phone, @city, @username,@passwd, @email)";
            using (SqlConnection conn = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand cmd=new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("fname", firstname);
                    cmd.Parameters.AddWithValue("lname", lastname);
                    cmd.Parameters.AddWithValue("phone", telephone);
                    cmd.Parameters.AddWithValue("city", cityname);
                    cmd.Parameters.AddWithValue("username", user);
                    cmd.Parameters.AddWithValue("passwd", pwd);
                    cmd.Parameters.AddWithValue("email", email);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private static string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["MarinaConnectionString"].ConnectionString;
        }

        protected void city_TextChanged(object sender, EventArgs e)
        {

        }
    }
}