using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using MasterPageDemo.App_Code;


namespace MasterPageDemo
{
    public partial class Registraion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

           if(FUProfilePic.HasFile)
            {
                DirectoryInfo Di = new DirectoryInfo(FUProfilePic.PostedFile.FileName);
                string extension = Di.Extension;
                if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                {
                    string gender = "";
                    if (RbtnMale.Checked)
                    {
                        gender = "Male";
                    }
                    else 
                    {
                        gender = "Female";
                    }
                    SqlConnection con = DbManager.GetCon();
                    string query1 = "insert into customer values('"+TxtName.Text+ "','"+gender+ "','"+TxtAddress.Text+"','"+TxtContactNo.Text+"','" + TxtEmailAddress.Text+"','"+TxtAdharNo.Text+"','"+FUProfilePic.PostedFile.FileName+"')";
                    string query2 = "insert into login values('" + TxtContactNo.Text + "','" + TxtPassword.Text + "','customer')";
                        SqlCommand cmd1 = new SqlCommand(query1,con);
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                   con.Open();  

                    if (cmd1.ExecuteNonQuery() > 0)
                    {

                        if (cmd2.ExecuteNonQuery() > 0)
                        {
                            FUProfilePic.SaveAs(Server.MapPath("upload/"+FUProfilePic.PostedFile.FileName));
                            Response.Write("<script>alert('Registration is Done');</script>");

                        }
                        else
                        {
                           Response.Write("<script>alert('Something Went Wrong');</script>");

                        }


                    }
                    else 
                    {
                        Response.Write("<script>alert('Select image');</script>");

                    }

                }

                else
                {
                    Response.Write("<script>alert('Please select image file only');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Please select Profile Pic');</script>");

            }
        }
    }
}