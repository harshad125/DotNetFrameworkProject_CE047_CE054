using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

namespace leave
{
    public partial class userview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["u_id"]==null)
            {
                Response.Redirect("home.aspx");
            }
            if(!IsPostBack)
            {
                GVbulid();
            }
          

        }
        protected void GVbulid()
        {
            int id = Convert.ToInt32(Session["u_id"].ToString());
            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select userdata.Id,userdata.name ,userdata.username,userdata.email,userdata.password,userdata.mobile,userdata.department,Reuest.f_start ,Reuest.To_end,Reuest.Status from [dbo].[userdata] INNER JOIN [dbo].[Reuest] ON userdata.Id=Reuest.Id  where userdata.Id='"+id+"'";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "Usshow");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            GrideShowUs.DataSourceID = null;
            GrideShowUs.DataSource = ds.Tables["Usshow"];
            GrideShowUs.DataBind();
            con.Close();

        }
        protected void GrideShowUs_RowEditing(object sender, GridViewEditEventArgs e)
        {
             GrideShowUs.EditIndex = e.NewEditIndex;
            
            GVbulid ();
        }

        protected void GrideShowUs_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GrideShowUs.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)GrideShowUs.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string  uname= ((TextBox)GrideShowUs.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string email = ((TextBox)GrideShowUs.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string  password = ((TextBox)GrideShowUs.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string  mobile = ((TextBox)GrideShowUs.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string dname = ((TextBox)GrideShowUs.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            try
            {
                using (con)
                {
                    con.Open();
                    string query = "update userdata set userdata.name='" + name+ "',userdata.username='" + uname + "',userdata.email='" + email + "',userdata.password='" + password+ "',userdata.mobile='" + mobile + "',userdata.department='" + dname + "' where   userdata.Id='" + id + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Data updated Successfully.')</script>");
                        GrideShowUs.EditIndex = -1;
                    }

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void GrideShowUs_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GrideShowUs.EditIndex = -1;
            GVbulid();
        }

        protected void L_out_Click(object sender, EventArgs e)
        {
            Session["u_id"] = null;
            Response.Redirect("home.aspx");
          

        }
    }
}