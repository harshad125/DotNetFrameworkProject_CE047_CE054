using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace leave
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void log_id_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            try
            {
                using (con)
                {
                    string query = "select count(*) from userdata where username='" + userid.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    int tem = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                    if (tem == 1)
                    {

                        string chquery = "select * from userdata where username=@uname";
                        SqlCommand pass = new SqlCommand(chquery, con);
                        pass.Parameters.AddWithValue("@uname", userid.Text);
                        string passcheck = "";
                        string person = "";
                        int id;
                        SqlDataReader rdr = pass.ExecuteReader();
                        if (rdr.Read())
                        {
                            id = rdr.GetInt32(0);
                            passcheck = rdr.GetString(4);
                            person = rdr.GetString(7);
                            if (passcheck == passid.Text && person == "Admin")
                            {
                                Session["u_id"] = id;
                                Response.Redirect("adminshow.aspx");
                            }
                            else if(passcheck == passid.Text && person == "User")
                            {
                                Session["u_id"] = id;
                                Response.Redirect("request.aspx");
                            }
                            else
                            {
                                Response.Write("<script>alert('no such kind of user is available .please first try to register your self.')</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('no data found.')</script>");
                        }

                    }
                    else
                    {
                        Response.Write("<script>alert('no such kind of user is available .please first try to register your self.')</script>");
                        
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}