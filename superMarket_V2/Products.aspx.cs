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
            ddlProductId.DataTextField = "product";
            ddlProductId.DataValueField = "productId";
            ddlProductId.DataSource = dr;
            ddlProductId.DataBind();
        }

        //protected void populateProductCategoriesDDL()
        //{
        //    CRUD myCrud = new CRUD();
        //    string mySql = @"select productCategoriesId, productCategories 
        //                     from productCategories";
        //    SqlDataReader dr = myCrud.getDrPassSql(mySql);
        //    ddlProductCategoriesId.DataTextField = "productCategories";
        //    ddlProductCategoriesId.DataValueField = "productCategoriesId";
        //    ddlProductCategoriesId.DataSource = dr;
        //    ddlProductCategoriesId.DataBind();

            
        //}

        //protected void ddlProductId_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    CRUD myCrud = new CRUD();
        //    string mySql = @"select productCategories.productCategoriesId, productCategories.productCategories from productCategories inner join product 
        //                    on productCategories.productId = product.productId where product.productId=@productId";
        //    Dictionary<string, object> myPara = new Dictionary<string, object>();
        //    myPara.Add("@productId", ddlProductId.SelectedValue);
        //    SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara);
        //    ddlProductCategoriesId.DataTextField = "productCategories";
        //    ddlProductCategoriesId.DataValueField = "productCategoriesId";
        //    ddlProductCategoriesId.DataSource = dr;
        //    ddlProductCategoriesId.DataBind();

        //    populateproductsLV();
        //}




        protected void ddlProductId_SelectedIndexChanged(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT productCategories.productCategoriesImage, product.product, productCategories.productCategories, size.size, productCategories.expiryDate, productCategories.price
                            FROM   product INNER JOIN
                            productCategories ON product.productId = productCategories.productId INNER JOIN
                            size ON productCategories.sizeId = size.sizeId where product.productId=@productId";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductId.SelectedValue);
            DataTable dt = myCrud.getDTPassSqlDic(mySql, myPara);
            productsLV.DataSource = dt;
            productsLV.DataBind();
        }

        protected void populateproductsLV()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT productCategories.productCategoriesImage, product.product, productCategories.productCategories, size.size, productCategories.expiryDate, productCategories.price
                            FROM   product INNER JOIN
                            productCategories ON product.productId = productCategories.productId INNER JOIN
                            size ON productCategories.sizeId = size.sizeId";

            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@productId", ddlProductId.SelectedValue);
            DataTable dt = myCrud.getDTPassSqlDic(mySql, myPara);
            productsLV.DataSource = dt;
            productsLV.DataBind();
        }


    }
}