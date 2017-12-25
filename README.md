# 實現 Viewstate MAC 的驗證失敗錯誤的範例程式碼

這是一個嘗試重現「... Viewstate MAC 的驗證失敗 ...」的範例程式碼網站

> 裡面沒有資料教你設定 NLB 請自行上網尋找資源

情境為在 Network Load Balancing 環境下

進行 HttpPost 之後可能會出現「... Viewstate MAC 的驗證失敗 ...」

### 實現方式

- 假設目前連線到「主機A」

- 先在 NLB 管理工具中將「主機A」退出負載平衡節點

- 點選「Get Current DateTime」按鈕後就可能會出現
 
- 「... Viewstate MAC 的驗證失敗 ...」的錯誤訊息

### 解決方法

在每一台負載平衡主機的 web.config 設定 &lt;machineKey /&gt;

> 已在 web.config 先行註解


### 參考資料

[ASP.NET MachineKey自動產生原理剖析 - 黑暗執行緒](http://blog.darkthread.net/post-2011-11-20-inside-aspnet-autogenkeys.aspx)

[The Will Will Web | 當 ASP.NET 發生 Viewstate MAC 的驗證失敗 ( machineKey )](https://blog.miniasp.com/post/2007/11/07/ASPNET-20-and-Validation-of-ViewState-Mac-failed-exception.aspx)

[解決檢視狀態訊息驗證碼 (MAC) 錯誤](https://support.microsoft.com/zh-tw/help/2915218)
