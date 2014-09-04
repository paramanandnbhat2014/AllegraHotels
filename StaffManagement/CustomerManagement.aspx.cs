using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Xml;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Text;

public partial class StaffManageSystem_CustomerManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * from Customer";
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Gridview1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        lblError.Text =  e.Exception.Message;
        if (e.Exception != null) 
        {
            if (e.Exception.Message.Contains("DateTime") == true)
            {
                lblError.Text = "Date of Birth in a wrong format.";
                
            }
            if (e.Exception.Message.Contains("binary data") == true)
            {
                lblError.Text = "Contact No in a wrong format.";
                
            }
            e.ExceptionHandled = true;
        } 
    }

    protected void Maillist_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * from Customer WHERE mailingList = 'True'";
    }

    protected void NotMaillist_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * from Customer WHERE mailingList = 'False'";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewCustomer.aspx");
    }




    protected void lnkExport_Click(object sender, EventArgs e)
    {
        //remove unwanted controls
        PrepareForExport(GridView1);

        //export to pdf without formatting
        ExportToPDF();
    }




    private void PrepareForExport(Control ctrl)
    {
        //iterate through all the grid controls
        foreach (Control childControl in ctrl.Controls)
        {
            //if the control type is link button, remove it 
            //from the collection
            if (childControl.GetType() == typeof(LinkButton))
            {
                ctrl.Controls.Remove(childControl);
            }

            //if the child control is not empty, repeat the process
            // for all its controls
            else if (childControl.HasControls())
            {
                PrepareForExport(childControl);
            }
        }
    }

    private void ExportToPDF()
    {
        //set the cotent type to PDF
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Products.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);

        //hide the link button column

        GridView1.Columns[4].Visible = false;

        //Outputs server control content to a provided System.Web.UI.HtmlTextWriter

        GridView1.RenderControl(hw);
        //load the html content to the string reader
        StringReader sr = new StringReader(sw.ToString());

        //HTMLDocument
        //Document(Rectangle pageSize, float marginLeft, float marginRight, float marginTop, float marginBottom)

        Document document = new Document(PageSize.A4, 10f, 10f, 10f, 0f);

        //iText class that allows you to convert HTML to PDF

        HTMLWorker htmlWorker = new HTMLWorker(document);

        //When this PdfWriter is added to a certain PdfDocument, 

        //the PDF representation of every Element added to this Document will be written to the outputstream.

        PdfWriter.GetInstance(document, Response.OutputStream);

        //open the document
        document.Open();

        htmlWorker.Parse(sr);

        //close the document stream

        document.Close();

        //write the content to the response stream

        Response.Write(document);

        Response.End();
    }

    protected void lnkExportFormat_Click(object sender, EventArgs e)
    {

        //remove unwanted controls

        PrepareForExport(GridView1);

        //export to PDF with formatting

        ExportToPDFWithFormatting();

    }

    protected void ExportToPDFWithFormatting()
    {

        //link button column is excluded from the list

        int colCount = GridView1.Columns.Count - 1;

        //Create a table

        PdfPTable table = new PdfPTable(colCount);

        table.HorizontalAlignment = 0;

        //create an array to store column widths
        int[] colWidths = new int[GridView1.Columns.Count];
        PdfPCell cell;
        string cellText;
        //create the header row
        for (int colIndex = 0; colIndex < colCount; colIndex++)
        {
            //set the column width
            colWidths[colIndex] = (int)GridView1.Columns[colIndex].ItemStyle.Width.Value;
            //fetch the header tex
            cellText = Server.HtmlDecode(GridView1.HeaderRow.Cells[colIndex].Text);
            //create a new cell with header text
            cell = new PdfPCell(new Phrase(cellText));
            //set the background color for the header cell
            cell.BackgroundColor = new BaseColor(System.Drawing.ColorTranslator.FromHtml("#d1dbe0"));
            //add the cell to the table. we dont need to create a row and add cells to the row
            //since we set the column count of the table to 4, it will automatically create row for
            //every 4 cells
            table.AddCell(cell);
        }
        //export rows from GridView to table
        for (int rowIndex = 0; rowIndex < GridView1.Rows.Count; rowIndex++)
        {
            if (GridView1.Rows[rowIndex].RowType == DataControlRowType.DataRow)
            {
                for (int j = 0; j < GridView1.Columns.Count - 1; j++)
                {
                    //fetch the column value of the current row
                    cellText = Server.HtmlDecode(GridView1.Rows[rowIndex].Cells[j].Text);
                    //create a new cell with column value
                    cell = new PdfPCell(new Phrase(cellText));

                    //Set Color of Alternating row
                    if (rowIndex % 2 != 0)
                    {
                        cell.BackgroundColor = new BaseColor(System.Drawing.ColorTranslator.FromHtml("#9ab2ca"));
                    }
                    else
                    {
                        cell.BackgroundColor = new BaseColor(System.Drawing.ColorTranslator.FromHtml("#f1f5f6"));
                    }
                    //add the cell to the table
                    table.AddCell(cell);
                }
            }
        }

        //Create the PDF Document
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        //open the stream
        pdfDoc.Open();
        //add the table to the document
        pdfDoc.Add(table);
        //close the document stream
        pdfDoc.Close();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;" + "filename=Product.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write(pdfDoc);
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    { }


}