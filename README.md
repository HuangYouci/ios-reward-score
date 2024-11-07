# iOS App Developing: Reward Score System

## Versions

* 2024/10/08: App Creation.
  * 創建了一個 Xcode iOS App 專案，並建立基本視圖（view），大致探索版面配置。
  * 在 UI 中的一個文字欄位，設定函數程式：針對現在時間做問候語。
    ```
    // 取得當前時間
        let currentHour = Calendar.current.component(.hour, from: Date())
                
    // 根據時間段顯示對應的問候語
        if currentHour >= 3 && currentHour < 10 {
                    mainGreeting.text = "早安"
                } else if currentHour >= 10 && currentHour < 14 {
                    mainGreeting.text = "午安"
                } else if currentHour >= 14 && currentHour < 18 {
                    mainGreeting.text = "下午好"
                } else {
                    mainGreeting.text = "晚安"
                }
    ```
