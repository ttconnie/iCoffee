# POS 及 庫存系統
# 專案架構
src/
├── controller/
│   ├── BackendUI.java
│   ├── member/
│   │   ├── AddMemberUI.java
│   │   ├── LoginUI.java
│   │   └── MemberManagerUI.java
│   └── porder/
│       ├── FinishUI.java
│       ├── PaymentUI.java
│       ├── PorderMainUI.java
│       └── PorderManagerUI.java
│
├── dao/
│   ├── MemberDao.java
│   ├── PorderDao.java
│   ├── StockDao.java
│   └── impl/
│       ├── MemberDaoImpl.java
│       ├── PorderDaoImpl.java
│       └── StockDaoImpl.java
│
├── model/
│   ├── Member.java
│   ├── Porder.java
│   └── Stock.java
│
├── service/
│   ├── MemberService.java
│   ├── PorderService.java
│   ├── StockService.java
│   └── impl/
│       ├── MemberServiceImpl.java
│       ├── PorderServiceImpl.java
│       └── StockServiceImpl.java
│
└── util/
    ├── ClockUtils.java        # 時鐘工具類
    ├── DbConnection.java      # 資料庫連接工具
    ├── JTableCenter.java      # 表格置中工具
    ├── MarqueePanel.java      # 跑馬燈面板
    ├── PasswordUtil.java      # 密碼處理工具
    ├── PrintUtils.java        # 列印工具
    ├── RegexUtil.java         # 正規表示法工具
    ├── StockManager.java      # 庫存管理工具
    ├── TextFieldUtil.java     # 文字輸入框工具
    └── Tool.java              # 通用工具類
# 簡介
-點選圖片即可點餐，點選數量可以用下拉式選單選擇數量  
-庫存即時更新，低於 0 會提醒選擇別的品項    
-交易完成送出後，會更新庫存到資料庫    
-如果庫存低於 5 杯，會跳提示庫存不足並要求煮茶  
-煮茶時間為 1 分鐘，後會自動增加庫存到資料庫  
# 功能列表
# 1. 點餐系統
-提供飲料選擇功能，支援多種飲料品項  
-自動計算總金額，並根據活動提供折扣（例如買四送一）  
-支援塑膠袋購買選項（+1 元）  
-提供結帳、清除訂單、刪除訂單、列印訂單等功能  
# 2. 庫存管理
-實時更新庫存數量，確保庫存不會超賣  
-提供庫存表格顯示，方便查看當前庫存狀態  
-支援從資料庫加載庫存數據，並在訂單完成後更新庫存  
# 3. 會員管理
-提供會員資料的查詢、修改、刪除功能  
-會員資料儲存在本地文件（member.txt）中  
# 4. 訂單管理

-提供訂單的查詢、修改、刪除功能  
-訂單資料儲存在 MySQL 資料庫中  
# 5. 報表與匯出
-支援將訂單匯出為 PDF 或 CSV 格式  
-提供庫存報表功能，顯示當前庫存狀態  
# 6. 使用者介面
-使用 Java Swing 實現圖形化使用者介面（GUI）  
-提供時鐘功能，顯示當前時間  
