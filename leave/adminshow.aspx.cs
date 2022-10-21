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
    public partial class adminshow : System.Web.UI.Page
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
            string user = "User";
            int id = Convert.ToInt32(Session["u_id"].ToString());
            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select userdata.Id,userdata.name ,userdata.username,userdata.email,userdata.password,userdata.mobile,userdata.department,Reuest.f_start ,Reuest.To_end,Reuest.Status from [dbo].[userdata] INNER JOIN [dbo].[Reuest] ON userdata.Id=Reuest.Id where userdata.rg_as='"+user+"'";
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
            GrideShowVM.DataSourceID = null;
            GrideShowVM.DataSource = ds.Tables["Usshow"];
            GrideShowVM.DataBind();
            con.Close();

        }
        protected void GrideShowVM_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GrideShowVM.EditIndex = e.NewEditIndex;
            GVbulid();

        }

        protected void GrideShowVM_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GrideShowVM.DataKeys[e.RowIndex].Value.ToString());
            string st = ((TextBox)GrideShowVM.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            try
            {
                using (con)
                {
                    con.Open();
                    string query = "update Reuest set Status='"+st+"' where Id='"+id+"'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int t = cmd.ExecuteNonQuery();
                    if(t>0)
                    {
                        Response.Write("<script>alert('Data updated Successfully.')</script>");
                        GrideShowVM.EditIndex =- 1;
                    }
                   
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }

        protected void GrideShowVM_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GrideShowVM.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            try
            {
                using (con)
                {
                    con.Open();
                    string query = "delete from Reuest  where UId='" + id + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Data deleted Successfully.')</script>");
                        GrideShowVM.EditIndex = -1;
                    }

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void L_btn_Click(object sender, EventArgs e)
        {
            Session["u_id"] = null;
            Response.Redirect("home.aspx");
        }

        protected void GrideShowVM_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}