using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class newGMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Inject onload
        HtmlGenericControl myBody = (HtmlGenericControl)Master.FindControl("body");
        myBody.Attributes.Add("onload", "initialize()");
    }
}