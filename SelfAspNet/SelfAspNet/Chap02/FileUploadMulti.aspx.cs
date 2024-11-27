using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SelfAspNet.Chap02
{
    public partial class FileUploadMulti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            if (upload2.HasFile)
            {
                var result = "";
                foreach(HttpPostedFile f in upload2.PostedFiles)
                {
                    f.SaveAs(Server.MapPath(
                        $"~/App_Data/doc/{Path.GetFileName(f.FileName)}"));
                    result += $"{f.FileName} ";
                }
                lblResult.Text = $"{result} をアップロードしました！";
            }
        }
    }
}