using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hotel_WebASP_PackagePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Book_Click11(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView1.Items)
            {
                Label packageName = (Label)item.FindControl("packageNameLabel");
                Session["packageName"] = packageName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();


                Label offerName = (Label)item.FindControl("offerNameLabel");
                Session["offerName"] = offerName.Text.ToString();
                //Label2.Text = typeName.Text.ToString();
            }

            Response.Redirect("PackageConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click12(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView2.Items)
            {
                Label packageName = (Label)item.FindControl("packageNameLabel");
                Session["packageName"] = packageName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();

                Label offerName = (Label)item.FindControl("offerNameLabel");
                Session["offerName"] = offerName.Text.ToString();
                //Label2.Text = typeName.Text.ToString();
            }

            Response.Redirect("PackageConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click13(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView3.Items)
            {
                Label packageName = (Label)item.FindControl("packageNameLabel");
                Session["packageName"] = packageName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();

                Label offerName = (Label)item.FindControl("offerNameLabel");
                Session["offerName"] = offerName.Text.ToString();
                //Label2.Text = typeName.Text.ToString();
            }

            Response.Redirect("PackageConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click14(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView4.Items)
            {
                Label packageName = (Label)item.FindControl("packageNameLabel");
                Session["packageName"] = packageName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();

                Label offerName = (Label)item.FindControl("offerNameLabel");
                Session["offerName"] = offerName.Text.ToString();
                //Label2.Text = typeName.Text.ToString();
            }

            Response.Redirect("PackageConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click15(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView5.Items)
            {
                Label packageName = (Label)item.FindControl("packageNameLabel");
                Session["packageName"] = packageName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();

                Label offerName = (Label)item.FindControl("offerNameLabel");
                Session["offerName"] = offerName.Text.ToString();
                //Label2.Text = typeName.Text.ToString();
            }

            Response.Redirect("PackageConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click16(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView6.Items)
            {
                Label packageName = (Label)item.FindControl("packageNameLabel");
                Session["packageName"] = packageName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();

                Label offerName = (Label)item.FindControl("offerNameLabel");
                Session["offerName"] = offerName.Text.ToString();
                //Label2.Text = typeName.Text.ToString();
            }

            Response.Redirect("PackageConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click17(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView7.Items)
            {
                Label packageName = (Label)item.FindControl("packageNameLabel");
                Session["packageName"] = packageName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();

                Label offerName = (Label)item.FindControl("offerNameLabel");
                Session["offerName"] = offerName.Text.ToString();
                //Label2.Text = typeName.Text.ToString();
            }

            Response.Redirect("PackageConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }


}