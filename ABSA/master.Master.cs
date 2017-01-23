using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ABSA;

namespace ABSA
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        PropertySvcRef.PropertyClient serv = new PropertySvcRef.PropertyClient();

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string name = txtName.Value.ToString();
            string surname = txtSurname.Value.ToString();
            string contact = txtContact.Value.ToString();
            string type = "User";
            string email = txtREmail.Value.ToString();
            string password = Secrecy.HashPassword(txtRPassword.Value.ToString());
            
            serv.Register(name, surname, email, password, type, contact);
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            string email = txtemail.Value.ToString();
            string password = Secrecy.HashPassword(txtpassword.Value.ToString());

            if (serv.Login(email, password))
            {
                Session["LoggedIn"] = email;
                Response.Write("<script LANGUAGE='JavaScript' >alert('Yata')</script>");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('You have entered as incorrect username or password')</script>");
            }
        }
    }
}