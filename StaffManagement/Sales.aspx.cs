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

public partial class StaffManageSystem_Sales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Gridview1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = e.Exception.Message;
        }
        e.ExceptionHandled = true;
    }


    protected void lnkExportFormat_Click(object sender, EventArgs e)
    {

        //remove unwanted controls
        PrepareForExport(GridView1);
        PrepareForExport(GridView2);
        //export to PDF with formatting
        ExportToPDFWithFormatting();
 
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


    protected void ExportToPDFWithFormatting()
    {

        //link button column is excluded from the list

        int colCount = GridView1.Columns.Count - 1;
        int colCount2 = GridView2.Columns.Count - 1;

        //Create a table

        PdfPTable table = new PdfPTable(colCount);
        PdfPTable table2 = new PdfPTable(colCount2);

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

        //create an array to store column widths
        int[] colWidths2 = new int[GridView2.Columns.Count];
        PdfPCell cell2;
        string cellText2;
        //create the header row
        for (int colIndex = 0; colIndex < colCount2; colIndex++)
        {
            //set the column width
            colWidths2[colIndex] = (int)GridView2.Columns[colIndex].ItemStyle.Width.Value;
            //fetch the header tex
            cellText2 = Server.HtmlDecode(GridView2.HeaderRow.Cells[colIndex].Text);
            //create a new cell with header text
            cell2 = new PdfPCell(new Phrase(cellText2));
            //set the background color for the header cell
            cell2.BackgroundColor = new BaseColor(System.Drawing.ColorTranslator.FromHtml("#d1dbe0"));
            //add the cell to the table. we dont need to create a row and add cells to the row
            //since we set the column count of the table to 4, it will automatically create row for
            //every 4 cells
            table2.AddCell(cell2);
        }
        //export rows from GridView to table
        for (int rowIndex = 0; rowIndex < GridView2.Rows.Count; rowIndex++)
        {
            if (GridView2.Rows[rowIndex].RowType == DataControlRowType.DataRow)
            {
                for (int j = 0; j < GridView2.Columns.Count - 1; j++)
                {
                    //fetch the column value of the current row
                    cellText2 = Server.HtmlDecode(GridView2.Rows[rowIndex].Cells[j].Text);
                    //create a new cell with column value
                    cell2 = new PdfPCell(new Phrase(cellText2));

                    //Set Color of Alternating row
                    if (rowIndex % 2 != 0)
                    {
                        cell2.BackgroundColor = new BaseColor(System.Drawing.ColorTranslator.FromHtml("#9ab2ca"));
                    }
                    else
                    {
                        cell2.BackgroundColor = new BaseColor(System.Drawing.ColorTranslator.FromHtml("#f1f5f6"));
                    }
                    //add the cell to the table
                    table2.AddCell(cell2);
                }
            }
        }





        //Create the PDF Document
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        //open the stream
        pdfDoc.Open();
        //add the table to the document
        pdfDoc.Add(new Paragraph("                                                                                "));
        pdfDoc.Add(new Paragraph("                                                  Finanial   Statement                                                  "));
        pdfDoc.Add(new Paragraph("Room Sales"));
        pdfDoc.Add(new Paragraph("                                                                                "));
        pdfDoc.Add(table);
        pdfDoc.Add(new Paragraph("                                                                                "));
        pdfDoc.Add(new Paragraph("                                                                                "));
        pdfDoc.Add(new Paragraph("Package Sales"));
        pdfDoc.Add(new Paragraph("                                                                                "));
        pdfDoc.Add(table2);
        //close the document stream
        pdfDoc.Close();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;" + "filename=Sales.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write(pdfDoc);
        Response.End();
    }

   

    public override void VerifyRenderingInServerForm(Control control)
    { }
}