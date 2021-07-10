using superMarket_V2.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace superMarket_V2
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateProductDDL();
                populateproductsLV();
            }
        }

        protected void populateProductDDL()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select productId, product from product";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlProductCatagory.DataTextField = "product";
            ddlProductCatagory.DataValueField = "productId";
            ddlProductCatagory.DataSource = dr;
            ddlProductCatagory.DataBind();
        }


        protected void ddlProductId_SelectedIndexChanged(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT productCategories.productCategoriesImage, product.product, productCategories.productCategories, size.size, productCategories.expiryDate, productCategories.price
                            FROM   product INNER JOIN
                            productCategories ON product.productId = productCategories.productId INNER JOIN
                            size ON productCategories.sizeId = size.sizeId where product.productId=@productId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductCatagory.SelectedValue);
            DataTable dt = myCrud.getDTPassSqlDic(mySql, myPara);
            lvProducts.DataSource = dt;
            lvProducts.DataBind();
            
        }

        protected void populateproductsLV()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT productCategories.productCategoriesImage, product.product, productCategories.productCategories, size.size, productCategories.expiryDate, productCategories.price
                            FROM   product INNER JOIN
                            productCategories ON product.productId = productCategories.productId INNER JOIN
                            size ON productCategories.sizeId = size.sizeId
                            where product.productId=@productId";

            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductCatagory.SelectedValue);
            DataTable dt = myCrud.getDTPassSqlDic(mySql, myPara);
            lvProducts.DataSource = dt;
            lvProducts.DataBind();
        }


    }
}