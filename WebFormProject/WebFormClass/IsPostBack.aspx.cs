using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormClass
{
    public partial class IsPostBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{
            //    Response.Write("This is PostBack Class");
            //}

            if(!IsPostBack)
            {
                Response.Write("Hello this is my code");
                AddlistItems();
            }
        }

        void AddlistItems()
        {
            ListBox1.Items.Add("Item 1");
            ListBox1.Items.Add("Item 2");
            ListBox1.Items.Add("Item 3");

        }

    }
}