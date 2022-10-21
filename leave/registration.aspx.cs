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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                try
                {
                    using(con)
                    {
                        string query = "select count(*) from userdata where username='" + uid.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        int tem = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                        if(tem==1)
                        {
                            Response.Write("<script>alert('user is already exist.')</script>");

                        }
                    }
                    con.Close();
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }
                
            }
        }

        protected void sid_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            try
            {
                using (con)
                {
                    string query = "insert into userdata (name,username,email,password,mobile,department,rg_as) values(@name,@uname,@ename,@pname,@mname,@dname,@rg)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@name", nid.Text);
                    cmd.Parameters.AddWithValue("@uname", uid.Text);
                    cmd.Parameters.AddWithValue("@ename", eid.Text);
                    cmd.Parameters.AddWithValue("@pname", pid.Text);
                    cmd.Parameters.AddWithValue("@mname", mid.Text);
                    cmd.Parameters.AddWithValue("@dname", did.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@rg", lid.SelectedItem.ToString());
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('user is Successfully registrated.')</script>");
                    Response.Redirect("login.aspx");
                    

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            //Response.Write("user is succefully register");
        }
    }
}