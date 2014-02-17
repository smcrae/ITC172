using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gridAllPerson_SelectedIndexChanged(object sender, EventArgs e)
    {
        fViewPerson.DataBind();
       
    }
    
    
    protected void fViewPerson_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        gridAllPerson.DataBind();
    }
}
