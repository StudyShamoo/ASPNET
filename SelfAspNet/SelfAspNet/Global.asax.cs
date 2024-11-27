using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace SelfAspNet
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null,
                new ScriptResourceDefinition()
                {
                    Path = "~/Scripts/jquery-3.7.1.min.js",
                    DebugPath = "~/Scripts/jquery-3.7.1.js",
                    CdnPath = "http://ajax.microsoft.com/ajax/jQuery/ajax/jquery-3.7.1.min.js",
                    CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/ajax/jquery-3.7.1.js"
                });
        }
    }
}