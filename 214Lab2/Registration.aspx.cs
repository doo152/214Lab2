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
    public partial class Registration : System.Web.UI.Page
    {
        //private object username;
        //private object fname;
        //private object lname;
        //private object city;
        //private object phone;
        //private object email;

        //public object Password1 { get; private set; }
        //public object Password { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
           //if (this.IsPostBack){ Password.attributes["value"] = Password.Text;}
           // or Password.Attributes.Add("value", "<password>");
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            Username.Text = "";
            Password.Text = "";
            Password1.Text = "";
            Fname.Text = "";
            Lname.Text = "";
            City.Text = "";
            Phone.Text = "";
            Email.Text = "";

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string user = Username.Text;
            string pwd = Password.Text;
            string cpwd = Password1.Text;
            string firstname = Fname.Text;
            string lastname = Lname.Text;
            string cityname = City.Text;
            string telephone = Phone.Text;
            string Email = this.Email.Text;
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
                    cmd.Parameters.AddWithValue("email", this.Email);
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