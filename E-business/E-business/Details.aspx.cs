using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_business
{
    public partial class Details : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuBooks.aspx");
        }

        protected void ButtonAddToCart_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["BooksDBSQL"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            using (con)
            {
                string query = "INSERT INTO ShopCart(OrderID, BookID, BookTitle, Price, Qty)" +
                               "VALUES(@OrderID, @BookID, @BookTitle, @Price, @Qty)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@OrderID", Session.SessionID);
                cmd.Parameters.AddWithValue("@BookID", ((Label)FormView1.Row.FindControl("BookIDLabel")).Text);
                cmd.Parameters.AddWithValue("@BookTitle",((Label)FormView1.Row.FindControl("BookTitleLabel")).Text);
                cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(((Label)FormView1.Row.FindControl("BookPriceLabel")).Text.Trim("лв.".ToCharArray())));
                cmd.Parameters.AddWithValue("@Qty", ((TextBox)FormView1.Row.FindControl("TextBox1")).Text);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            Button btn = (Button)sender;
            btn.Text = " Книгата/ите бяха добавени успешно ";
            btn.Enabled = false;
        }
    }
}