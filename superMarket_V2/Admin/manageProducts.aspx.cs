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
            populateProductsGV();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //set uploaded file to HttpPostedFile object
            HttpPostedFile postedFile = fileProductImage.PostedFile;

            //get uploaded file extension
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);

            CRUD myCrud = new CRUD();
            string mySql = @"update productCategories set productCategoriesImage=@productCategoriesImage
                             where productCategoriesId = @productCategoriesId
                             SELECT CAST(scope_identity() AS int)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            //condition to only accept uploaded images with .jpg, .png, .jpeg extensions and then reads the content of the file via inputStream
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".jpeg")
            {
                Stream stream = postedFile.InputStream;
                myPara.Add("@productCategoriesImage", stream);
            }
            myPara.Add("@productCategoriesId", int.Parse(txtProductCategoriesId.Text));
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Succesfully Updated Product";
            }
            else
            {
                lblOutput.Text = "Failed to Update Product";
            }

            populateProductsGV();
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

    }
}