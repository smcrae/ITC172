using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Customer rc = new Customer();                    ///the try catch is for any error handling
            rc.LastName = TxtLastName.Text;
            rc.FirstName = TxtFirstName.Text;
            rc.Email = TxtEmail.Text;
            rc.PhoneNumber = TxtPhone.Text;
            rc.Password = TxtPassword.Text;
            Session["newCustomer"] = rc;                    //session variable 'newCustomer'  object 'rc'
            Response.Redirect("Default2.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text=ex.Message;
        }

    }
  
}
