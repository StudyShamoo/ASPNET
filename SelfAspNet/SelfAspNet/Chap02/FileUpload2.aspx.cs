using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SelfAspNet.Chap02
{
    public partial class FileUpload2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (upload_kadai.HasFile)
            {
                var postfile = upload_kadai.PostedFile;
                var uppath = Server.MapPath($"~/App_Data/doc/{Path.GetFileName(postfile.FileName)}");
                if(postfile.ContentType == "text/plain")
                {
                    postfile.SaveAs(uppath);
                    lblResult.Text = $"{postfile.FileName}をアップロードしました！";
                }
                else
                {
                    lblResult.Text = "アップロードに失敗しました！" +
                        $"<br/>（{postfile.FileName} の拡張子は " +
                        $"{Path.GetExtension(postfile.FileName)} です。）";
                }
            }
            else
            {
                lblResult.Text = "ファイルを選択してください！";
            }
        }
    }
}