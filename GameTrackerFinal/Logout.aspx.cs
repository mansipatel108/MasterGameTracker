using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameTrackerFinal
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //store session info and authentication methods in the authnticationManager object
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            //perform signout
            authenticationManager.SignOut();

            //redirect to the home page
            Response.Redirect("~/Game.aspx");
        }
    }
}