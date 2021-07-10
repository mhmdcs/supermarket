using superMarket_V2.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace superMarket_V2.Admin
{
    public partial class productManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateProductsGV();
                populateddlProductIdDDL();
            }
        }
        public void populateddlProductIdDDL()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select productId, product 
                                 from product";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlProducTypetId.DataTextField = "product";
            ddlProducTypetId.DataValueField = "productId";
            ddlProducTypetId.DataSource = dr;
            ddlProducTypetId.DataBind();
        }

        protected void populateSize()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select sizeId, size from size";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            rbtlSize.DataTextField = "size";
            rbtlSize.DataValueField = "sizeId";
            rbtlSize.DataSource = dr;
            rbtlSize.DataBind();
        }

        //protected void btnAdd_Click22(object sender, EventArgs e)
        //{


        //    //set uploaded file to HttpPostedFile object
        //    HttpPostedFile postedFile = fileProductImage.PostedFile;

        //    //get uploaded file extension
        //    string fileName = Path.GetFileName(postedFile.FileName);
        //    string fileExtension = Path.GetExtension(fileName);

        //    CRUD myCrud = new CRUD();
        //    string mySql = @"INSERT INTO productCategories
        //                           (productCategories
        //                           ,productCategoriesImage
        //                           ,productId
        //                           ,price
        //                           ,sizeId
        //                           ,expiryDate)
        //                     VALUES
        //                           (@productCategories
        //                           ,@productCategoriesImage
        //                           ,@productId
        //                           ,@price
        //                           ,@sizeId
        //                           ,@expiryDate)
        //                     SELECT CAST(scope_identity() AS int)";
        //    Dictionary<string, object> myPara = new Dictionary<string, object>();
        //    myPara.Add("@productCategories", txtProductCategories);
        //    //condition to only accept uploaded images with .jpg, .png, .jpeg extensions and then reads the content of the file via inputStream
        //    if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".jpeg")
        //    {
        //        Stream stream = postedFile.InputStream;
        //        myPara.Add("@productCategoriesImage", stream);
        //    }
        //    myPara.Add("@productId", ddlProductCatagory.SelectedValue);
        //    myPara.Add("@price", txtPrice.Text);
        //    myPara.Add("@sizeId", rbtlSize.SelectedValue);
        //    myPara.Add("@expiryDate", txtExpiryDate.Text);
        //    int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
        //    if (rtn >= 1)
        //    {
        //        lblOutput.Text = "Succesfully Added Product";
        //    }
        //    else
        //    {
        //        lblOutput.Text = "Failed to Add Product";
        //    }

        //    populateProductsGV();
        //}


        protected void btnAdd_Click(object sender, EventArgs e)
        {



            //set uploaded file to HttpPostedFile object
            HttpPostedFile postedFile = fileProductImage.PostedFile;

            //get uploaded file extension
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);

            CRUD myCrud = new CRUD();
            string mySql = @"INSERT INTO productCategories
                                   (productCategories
                                   ,productCategoriesImage
                                   ,productId
                                   ,price
                                   ,sizeId
                                   ,expiryDate)
                             VALUES
                                   (@productCategories
                                   ,@productCategoriesImage
                                   ,@productId
                                   ,@price
                                   ,@sizeId
                                   ,@expiryDate)
                             SELECT CAST(scope_identity() AS int)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productCategories", txtProductCategories.Text);

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".jpeg")
            {
                Stream stream = postedFile.InputStream;
                myPara.Add("@productCategoriesImage", stream);
            }
            myPara.Add("@productId", ddlProducTypetId.SelectedValue);
            myPara.Add("@price", txtPrice.Text);
            myPara.Add("@sizeId", rbtlSize.SelectedValue);
            myPara.Add("@expiryDate", txtExpiryDate.Text);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Succesfully Added Product";
            }
            else
            {
                lblOutput.Text = "Failed to Add Product";
            }

        }



        protected void populateProductsGV()
        {

            CRUD myCrud = new CRUD();
            string mySql = @"SELECT product.product, productCategories.productCategories, size.size, productCategories.expiryDate, productCategories.price
                            FROM   product INNER JOIN
                            productCategories ON product.productId = productCategories.productId INNER JOIN
                            size ON productCategories.sizeId = size.sizeId";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvProducts.DataSource = dr;
            gvProducts.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"delete productCategories where productCategoriesId=@productCategoriesId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productCategoriesId", int.Parse(txtProductCategoriesId.Text));
            int pk = int.Parse(txtProductCategoriesId.Text);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Succesfully Deleted Product";
            }
            else
            {
                lblOutput.Text = "Failed to Delete Product";
            }
        }
    }
}