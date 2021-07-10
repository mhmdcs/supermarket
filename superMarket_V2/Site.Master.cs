using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace superMarket_V2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //how to hide navbar pages from users based on roles

            if (HttpContext.Current.User.IsInRole("admin"))
            {
                adminLink.Visible = true;
            }

            if (HttpContext.Current.User.IsInRole("user"))
            {
                orderLink.Visible = true;
            }

            if (HttpContext.Current.User.IsInRole("admin"))
            {
                orderLink.Visible = true;
            }

            if (HttpContext.Current.User.IsInRole("admin"))
            {
                profileLink.Visible = true;
            }

            if (HttpContext.Current.User.IsInRole("user"))
            {
                profileLink.Visible = true;
            }

            if (HttpContext.Current.User.IsInRole("admin"))
            {
                signupLink.Visible = false;
            }

            if (HttpContext.Current.User.IsInRole("user"))
            {
                signupLink.Visible = false;
            }

            if (HttpContext.Current.User.IsInRole("user"))
            {
                loginLink.Visible = false;
            }

            if (HttpContext.Current.User.IsInRole("admin"))
            {
                loginLink.Visible = false;
            }
            

        }
    }
}