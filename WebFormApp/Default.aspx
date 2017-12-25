<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>
                <asp:Literal runat="server" ID="HostNameLiteral"></asp:Literal>
            </h1>

            <asp:Button runat="server" ID="GetDateTimeButton" 
                        Text="Get Current DateTime" 
                        OnClick="GetDateTimeButton_Click" />

            <hr />

            當下日期時間：
            <asp:Literal runat="server" ID="CurrentDateTimeLiteral"></asp:Literal>

            <!--
                這是一個嘗試重現「... Viewstate MAC 的驗證失敗 ...」的範例程式碼網站
                
                情境為在 Windows Network Load Balancing 環境下
                進行 HttpPost 之後可能會出現「... Viewstate MAC 的驗證失敗 ...」

                實現方式
                    目前連線到「主機A」
                    先在 NLB 管理工具中將「主機A」退出負載平衡節點
                    點選「Get Current DateTime」按鈕後就可能會出現
                    「... Viewstate MAC 的驗證失敗 ...」的錯誤訊息

                解決方法
                    在每一台負載平衡主機的 web.config 設定 <machineKey />
                    （已在 web.config 先行註解）
            -->
        </div>
    </form>
</body>
</html>
