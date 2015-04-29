using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_business
{
    public partial class BookInfo : System.Web.UI.UserControl
    {
        public string BookNum
        {
            get { return this.lblBookNum.Text; }
            set { this.lblBookNum.Text = value; }
        }

        public string BookTitle 
        {
            get { return this.lblBookTitle.Text; }
            set { this.lblBookTitle.Text = value; }
        }

        public string BookPrice 
        {
            get { return this.lblBookTitle.Text; }
            set { this.lblBookTitle.Text = value; }
        }

        public string BookQty 
        {
            get { return this.lblBookQty.Text; }
            set { this.lblBookQty.Text = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}