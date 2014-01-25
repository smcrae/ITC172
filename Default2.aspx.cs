using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["newCustomer"] != null)        //if the session variable newcustomer is not null, do this
        {

            Customer rc = (Customer)Session["newCustomer"];

            TxtLastName.Text = rc.LastName;
            TxtFirstName.Text = rc.FirstName;
            TxtEmail.Text = rc.Email;
            TxtPhone.Text = rc.PhoneNumber;
            TxtPass.Text = rc.Password;
            TxtConfirm.Text = rc.Password;
        }

        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void BtnConfirm_Click(object sender, EventArgs e)
    {
        string last = TxtLastName.Text;
        Response.Redirect("Default3.aspx?name=" + last);

    }
}
   
