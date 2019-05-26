using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _214Lab2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // GridView2.Visible = false;
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            int ID = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            Response.Redirect("~/Docks.aspx?DockID=" + ID);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
            int ID = GridView1.SelectedIndex + 1;
            Console.WriteLine("items selected: ", ID);
            GridView2.Visible = true;
           
        }
    }
}