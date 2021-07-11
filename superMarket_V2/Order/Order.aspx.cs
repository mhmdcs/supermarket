using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using superMarket_V2.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace superMarket_V2.Order
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateProductDDL();
                populateddlProductCategoriesDDL();
            }
        }

        //this method is needed before page_load to run the other export methods
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }


        public void populateProductDDL()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select productId, product from product";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlProductId.DataTextField = "product";
            ddlProductId.DataValueField = "productId";
            ddlProductId.DataSource = dr;
            ddlProductId.DataBind();
        }

        public void populateddlProductCategoriesDDL()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select productCategoriesId, productCategories 
                                 from productCategories
                             where productId=@productId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductId.SelectedValue);
            SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara);
            ddlProductCategoriesId.DataTextField = "productCategories";
            ddlProductCategoriesId.DataValueField = "productCategoriesId";
            ddlProductCategoriesId.DataSource = dr;
            ddlProductCategoriesId.DataBind();
        }

        protected void ddlProductId_SelectedIndexChanged(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select productCategories.productCategoriesId, productCategories.productCategories from productCategories inner join product 
                                on productCategories.productId = product.productId where product.productId=@productId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductId.SelectedValue);
            SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara);
            ddlProductCategoriesId.DataTextField = "productCategories";
            ddlProductCategoriesId.DataValueField = "productCategoriesId";
            ddlProductCategoriesId.DataSource = dr;
            ddlProductCategoriesId.DataBind();
        }

        public void populateOrderGV()
        {
            //Code to retrieve current logged-in username and UserId
            // Get current logged-in user username
            string uname = HttpContext.Current.User.Identity.Name.ToString();
            // Get current user UserId in asp.net membership
            MembershipUser user = Membership.GetUser(uname);
            string userId = user.ProviderUserKey.ToString();

            CRUD myCrud = new CRUD();
            string mySql = @"SELECT CustomerProductOrder.customerProductOrderId, customer.customerName, location.location, product.product, productCategories.productCategories, size.size, CustomerProductOrder.customerProductOrderQuantity, productCategories.expiryDate, productCategories.price
                            FROM   productCategories INNER JOIN
			                CustomerProductOrder ON productCategories.productCategoriesId = CustomerProductOrder.productCategoriesId INNER JOIN
			                size ON productCategories.sizeId = size.sizeId INNER JOIN
			                customer ON CustomerProductOrder.UserId = customer.UserId INNER JOIN
			                location ON customer.locationId = location.locationId INNER JOIN
							product ON product.productId = CustomerProductOrder.productId
                            where customer.UserId = @UserId
                            ";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@UserId", userId);
            SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara);
            gvOrder.DataSource = dr;
            gvOrder.DataBind();
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {

            //Code to retrieve current logged-in username and UserId to perform secured crud operations that check user integrity
            // Get current logged-in user username
            string uname = HttpContext.Current.User.Identity.Name.ToString();
            // Get current user UserId in asp.net membership
            MembershipUser user = Membership.GetUser(uname);
            string userId = user.ProviderUserKey.ToString();

            CRUD myCrud = new CRUD();
            string mySql = @"INSERT INTO CustomerProductOrder
                                   (UserId
                                   ,productId
                                   ,productCategoriesId
                                   ,customerProductOrderQuantity)
                             VALUES
                                   (CAST(@UserId AS UNIQUEIDENTIFIER)
                                   ,@productId
                                   ,@productCategoriesId
                                   ,@customerProductOrderQuantity)
						           SELECT CAST(scope_identity() AS int);";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductId.SelectedValue);
            myPara.Add("@productCategoriesId", ddlProductCategoriesId.SelectedValue);
            myPara.Add("@customerProductOrderQuantity", txtcustomerProductOrderQuantity.Text);
            myPara.Add("@UserId", userId);
            int pk = myCrud.InsertUpdateDeleteViaSqlDicRtnIdentity(mySql, myPara);
            if (pk >= 1)
            {
                lblOutput.Text = "Successfully Ordered Product";
                
            }
            else
            {
                lblOutput.Text = "Failed to Order Product";
            }

            
        }

        protected void btnReceipt_Click(object sender, EventArgs e)
        {
            populateOrderGV();
        }

        
        protected void btnUpdateOrder_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"UPDATE CustomerProductOrder
                             SET productId = @productId
                                  ,productCategoriesId = @productCategoriesId
                                  ,customerProductOrderQuantity = @customerProductOrderQuantity
                             where CustomerProductOrderId= @CustomerProductOrderId
                              SELECT CAST(scope_identity() AS int)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductId.SelectedValue);
            myPara.Add("@productCategoriesId", ddlProductCategoriesId.SelectedValue);
            myPara.Add("@customerProductOrderQuantity", txtcustomerProductOrderQuantity.Text);
            myPara.Add("@CustomerProductOrderId", txtCustomerProductOrderId.Text);
            int pk = myCrud.InsertUpdateDelete(mySql, myPara);

            if (pk >= 1)
            {
                lblOutput.Text = "Successfully Updated Order";
            }
            else
            {
                lblOutput.Text = "Failed to Update Order";
            }
            
        }

        protected void btnDeleteOrder_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"delete CustomerProductOrder where CustomerProductOrderId=@CustomerProductOrderId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@CustomerProductOrderId", int.Parse(txtCustomerProductOrderId.Text));
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Succesfully Deleted Order";
            }
            else
            {
                lblOutput.Text = "Failed to Delete Order";
            }
            
        }


        protected void btnExportPDF_Click(object sender, EventArgs e)
        {
            ExportGridToPDF();
        }

        //export to PDF
        public void ExportGridToPDF()
        {

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            gvOrder.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            iTextSharp.text.html.simpleparser.HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            gvOrder.AllowPaging = true;
            gvOrder.DataBind();
        }
    }
}