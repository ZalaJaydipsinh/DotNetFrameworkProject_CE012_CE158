using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace LinkSharing
{
    
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Button_login_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["UserConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand sqlcomm = new SqlCommand("select * from Newuser where email=@email and password=@password",sqlconn);
            sqlcomm.Parameters.AddWithValue("email", Lu_email.Text);
            sqlcomm.Parameters.AddWithValue("password", Lu_pswd.Text);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataRow dr = dt.Rows[0];
            int uid = dr.Field<int>("Uid");

            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            if (dt.Rows.Count > 0)
            {
                //Session["id"] = Lu_email.Text;
                Session["id"] = uid;
                Response.Redirect("Index.aspx");
                Session.RemoveAll();
            }
            else
            {
                Response.Write("<script>alert('Wrong Username & Password !')</script>");
            }
        }

    }
}