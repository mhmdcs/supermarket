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
               // populateProductsGV();
                populateddlProductIdDDL();
            }
        }

        //this method is needed before page_load to run the other export methods
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
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

            populateProductsGV();
        }



        protected void populateProductsGV()
        {

            CRUD myCrud = new CRUD();
            string mySql = @"SELECT productCategories.productCategoriesId, productCategories.productCategories, product.product, size.size, productCategories.expiryDate, productCategories.price
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
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Succesfully Deleted Product";
            }
            else
            {
                lblOutput.Text = "Failed to Delete Product";
            }
            populateProductsGV();
        }

        protected void btnShowProducts_Click(object sender, EventArgs e)
        {
            populateProductsGV();
        }

        protected void btnExportExcel_Click(object sender, EventArgs e)
        {
            ExportGridToExcel(gvProducts);
        }
        //export to Excel
        public void ExportGridToExcel(GridView grd)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grd.AllowPaging = false;
            populateProductsGV();
            grd.RenderControl(hw);
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }


        protected void btnExportWord_Click(object sender, EventArgs e)
        {
            ExportGridToword();
        }
        //export to Word
        public void ExportGridToword()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            //string FileName = "Vithal" + DateTime.Now + ".doc";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/msword";
            Response.AddHeader("Content-Disposition", "attachment;filename=GridViewExport.doc");
            gvProducts.GridLines = GridLines.Both;
            gvProducts.HeaderStyle.Font.Bold = true;
            gvProducts.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
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
            gvProducts.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            iTextSharp.text.html.simpleparser.HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            gvProducts.AllowPaging = true;
            gvProducts.DataBind();
        }


    }
}