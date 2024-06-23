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
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = DbManager.GetCon();
            string gender = "";
            if(RbtnMale.Checked)
            {
                gender = "Male";
            }
            else if(RbtnFemale.Checked)
            {
                gender = "Female";
            }
            string query = "insert into enquiry values('"+TextName.Text+"','"+gender+"','"+Textaddress.Text+"','"+TextContactNo.Text+"','"+TextEmailAddress.Text+"','"+TextEnquiry.Text+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Enquiry is Saved');</script>");
            TextName.Text = "";
            Textaddress.Text = "";
            TextEmailAddress.Text = "";
            TextContactNo.Text = "";
            TextEnquiry.Text = "";
        }
    }
}