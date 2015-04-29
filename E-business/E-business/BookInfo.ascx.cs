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

        public int NaMaikaTiPutkata { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Text = NaMaikaTiPutkata.ToString();
        }
    }
}