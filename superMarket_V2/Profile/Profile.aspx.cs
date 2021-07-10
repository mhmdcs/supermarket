using superMarket_V2.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace superMarket_V2.Profile
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populateLocation();
        }

        protected void populateLocation()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select locationId, location from location";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlLocationId.DataTextField = "location";
            ddlLocationId.DataValueField = "locationId";
            ddlLocationId.DataSource = dr;
            ddlLocationId.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
             //Code to retrieve current logged-in username and UserId to perform secured crud operations that check user integrity
            // Get current logged-in user username
            string uname = HttpContext.Current.User.Identity.Name.ToString();
            // Get current user UserId in asp.net membership
            MembershipUser user = Membership.GetUser(uname);
            string userId = user.ProviderUserKey.ToString();

            CRUD myCrud = new CRUD();
                    string mySql = @"INSERT INTO customer
                                           (UserId
                                           ,customerName
                                           ,customerPhoneNumber
                                           ,customerEmail
                                           ,locationId
                                           ,customerCreditNumber
                                           ,customerCreditExpiration
                                           ,customerCreditCVC)
                                     VALUES
                                           (CAST(@UserId AS UNIQUEIDENTIFIER)
                                           ,@customerName
                                           ,@customerPhoneNumber
                                           ,@customerEmail
                                           ,@locationId
                                           ,@customerCreditNumber
                                           ,@customerCreditExpiration
                                           ,@customerCreditCVC)
							                SELECT CAST(scope_identity() AS int);";
                    Dictionary<string, object> myPara = new Dictionary<string, object>();
                    myPara.Add("@customerName", txtCustomerName.Text);
                    myPara.Add("@customerPhoneNumber", txtCustomerPhoneNumber.Text);
                    myPara.Add("@customerEmail", txtCustomerEmail.Text);
                    myPara.Add("@locationId", ddlLocationId.SelectedValue);
                    myPara.Add("@customerCreditNumber", txtCustomerCreditNumber.Text);
                    myPara.Add("@customerCreditExpiration", txtCustomerCreditExpiration.Text);
                    myPara.Add("@customerCreditCVC", txtCustomerCreditCVC.Text);
                    myPara.Add("@UserId", userId);
                 int pk = myCrud.InsertUpdateDeleteViaSqlDicRtnIdentity(mySql, myPara);
                    if (pk >= 1)
                    {
                        lblOutput.Text = "Successfully Inserted Profile Information";

                    //auto assign role to recently registered user
                    var userName = HttpContext.Current.User.Identity.Name;
                    Roles.AddUserToRole(userName, "hasProfile");
                    Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        lblOutput.Text = "Failed to Insert Profile Information";
                    }

        }

    }
}