using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

namespace leave
{
    public partial class reuest : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_id"] == null)
            {
                Response.Redirect("home.aspx");
            }
        }

        protected void Request_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            try
            {
                using (con)
                {
                    con.Open();
                    string pquery = "select Id from userdata where username=@uname";
                    SqlCommand pcmd = new SqlCommand(pquery, con);
                    pcmd.Parameters.AddWithValue("@uname", userid.Text);
                    int tid = Convert.ToInt32(pcmd.ExecuteScalar().ToString());

                    string query = "insert into Reuest (f_start,To_end,Id) values(@fname,@toname,@id)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    
                    cmd.Parameters.AddWithValue("@fname", d1.Text);
                    cmd.Parameters.AddWithValue("@toname", d2.Text);
                    cmd.Parameters.AddWithValue("@id", tid);


                    cmd.ExecuteNonQuery();
                     Response.Redirect("userview.aspx");
                    Response.Write("user is successfully registrated");

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void sh_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("userview.aspx");
        }
    }
}