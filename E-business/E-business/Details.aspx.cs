using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_business
{
    public partial class Details : System.Web.UI.Page
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
            Button btn = (Button)sender;
            btn.Text = " Книгата/ите бяха добавени успешно ";
            btn.Enabled = false;
        }
    }
}