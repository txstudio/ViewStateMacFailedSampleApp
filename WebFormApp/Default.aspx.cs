using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.HostNameLiteral.Text
                = this.GetHostName;
        }

        protected void GetDateTimeButton_Click(object sender, EventArgs e)
        {
            //刻意增加回應所需要的時間，較能重現「... Viewstate MAC 的驗證失敗 ...」錯誤訊息

            Thread.Sleep(5000);

            this.CurrentDateTimeLiteral.Text
                = String.Format("{0:yyyy/MM/dd HH:mm:ss}", DateTime.Now);
        }


        private string GetHostName
        {
            get {
                return System.Net.Dns.GetHostName();
            }
        }
    }
}