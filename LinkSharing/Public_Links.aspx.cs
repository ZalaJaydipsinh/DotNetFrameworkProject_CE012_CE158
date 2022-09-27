using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinkSharing
{
    public partial class Public_Links : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null || Session["isPublic"] == null )
            {
                Response.Redirect("Login.aspx");
            }

            GridView1.Columns[0].Visible = false;
            //GridView1.Columns[1].Visible = false;
            GridView1.Columns[2].Visible = false;
            //GridView1.Columns[3].Visible = false;
            //GridView1.Columns[4].Visible = false;
            GridView1.Columns[5].Visible = false;
            //GridView1.Columns[6].Visible = false;
        }
    }
}