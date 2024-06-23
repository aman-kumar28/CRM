using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MasterPageDemo.App_Code;

namespace MasterPageDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = DbManager.GetCon();
            string query = "select * from login where userid='" + TxtUserId.Text + "' and password='" + TxtPassword.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(query,con);
            DataSet ds=new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["usertype"].ToString()=="customer")
                {
                    Session["userid"] = TxtUserId.Text;
                    Response.Redirect("customerzone/CustomerHome.aspx");
                }
                else if (ds.Tables[0].Rows[0]["usertype"].ToString()=="admin")
                {
                    Session["adminid"] = TxtUserId.Text;
                    Response.Redirect("adminzone/AdminHome.aspx");
                }
                    
            }
            else
            {
                Response.Write("<script>alert('Invalid User');</script>");
            }

        }
    }
}