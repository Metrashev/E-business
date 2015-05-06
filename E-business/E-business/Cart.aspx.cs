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
    public partial class Cart : System.Web.UI.Page
    {
        decimal bookPriceSum = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label priceControl = ((Label)e.Item.FindControl("PriceLabel"));
            Label qtyControl = ((Label)e.Item.FindControl("QtyLabel"));

            if (priceControl != null && qtyControl != null)
            {
                if (!String.IsNullOrEmpty(priceControl.Text) && !String.IsNullOrEmpty(qtyControl.Text))
                {
                    bookPriceSum += Convert.ToDecimal(priceControl.Text) * Convert.ToInt32(qtyControl.Text);
                    lblCartSum.Text = bookPriceSum.ToString();
                }
            }
        }

        protected void btnDeleteSelected_Click(object sender, EventArgs e)
        {
            List<string> bookIdsForDelete = new List<string>();
            foreach (DataListItem item in DataList1.Items)
            {
                CheckBox chbxControl = (CheckBox)item.FindControl("chbxCheckForDelete");
                if (chbxControl.Checked)
                {
                    Label bookIdLabel = (Label)item.FindControl("BookIDLabel");
                    bookIdsForDelete.Add("'" + bookIdLabel.Text + "'");
                }
            }

            DeleteBooks(bookIdsForDelete);
            DataList1.DataBind();
        }

        private void DeleteBooks(IEnumerable<string> bookIds)
        {
            string conStr = ConfigurationManager.ConnectionStrings["BooksDBSQL"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            using (con)
            {
                string query = "DELETE FROM ShopCart WHERE BookID IN (" + String.Join(",", bookIds) + ")";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}