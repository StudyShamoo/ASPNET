using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfAspNet.Chap02
{
    public partial class CheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckList_SelectedIndexChanged(object sender, EventArgs e)
        {
            String msg = "あなたが好きな食べ物は";
            foreach(ListItem item in CheckList.Items)
            {
                if(item.Selected)
                    msg += " " + $"{item.Value}";
            }
            msg += "ですね！";
            lblCheckResult.Text = msg;
        }
    }
}