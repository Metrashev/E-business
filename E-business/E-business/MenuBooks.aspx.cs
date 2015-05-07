using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_business
{
    public partial class MenuBooks : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Category = Request.QueryString["Category"];
            String Criterion = Request.QueryString["Criterion"];
            if (Category != null)
            {
                String SString;
                SString = "SELECT BookID,BookType, BookTitle,BookAuthor,BookPrice FROM Books WHERE BookType ='" + Category + "' ORDER BY BookId";
                SqlDataSource1.SelectCommand = SString;
            }
            else if (Criterion != null)
            {
                String SString;
                SString = "SELECT BookID, BookType, BookTitle, BookAuthor, BookPrice " +
                "FROM Books" +
                " WHERE (BookID LIKE '%" + Criterion + "%' ) OR" +
                " (BookType LIKE '%" + Criterion + "%') OR" +
                " (BookTitle LIKE '%" + Criterion + "%') OR" +
                " (BookAuthor LIKE '%" + Criterion + "%') OR" +
                " (BookPrice LIKE '%" + Criterion + "%')" +
                " ORDER BY BookID";
                SqlDataSource1.SelectCommand = SString;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            Response.Redirect("MenuBooks.aspx?Category=" + btn.Text);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Details.aspx?BookID=" + GridView1.SelectedValue);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btnToCart = (ImageButton)sender;
            Response.Redirect("Cart.aspx");
        }

        protected void ButtonSearchBooks_Click(object sender, EventArgs e)
        {
            if (TextBoxSearchText.Text != "")
            {
                Response.Redirect("MenuBooks.aspx?Criterion=" + TextBoxSearchText.Text);
            }
        }
    }
}