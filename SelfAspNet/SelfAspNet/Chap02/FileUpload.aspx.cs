using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SelfAspNet.Chap02
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (upload.HasFile)
            {
                var postfile = upload.PostedFile;
                var uppath = Server.MapPath($"~/App_Data/doc/{Path.GetFileName(postfile.FileName)}");
                postfile.SaveAs(uppath);
                lblResult.Text = $"{postfile.FileName}をアップロードしました。";
            }
        }
    }
}