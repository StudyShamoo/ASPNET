﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfAspNet
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtName.Text = "名無しの権兵衛";
                lblGreet.Text = $"こんにちは、{txtName.Text}さん！";
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            lblGreet.Text = $"こんにちは、{txtName.Text}さん！";
            // lblGreet.Text = $"Good Night " + $"{txtName.Text}.";
        }
    }
}