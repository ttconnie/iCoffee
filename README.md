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
-點擊圖片可選購咖啡種類及數量    
-交易完成送出後，會更新到資料庫    
-如果庫存低於 5 杯，會跳提示庫存不足並要求煮茶  
-煮茶時間為 1 分鐘，後會自動增加庫存到資料庫  
# 功能列表
# 1. 點餐系統
-提供飲料選擇功能，支援多種飲料品項  
-自動計算總金額 
  
-提供結帳、修改訂單等功能  
# 2. 庫存管理
-提供庫存數量，確保庫存狀態  
-提供庫存表格顯示，方便查看當前庫存狀態  
-支援從資料庫加載庫存數據，並在訂單完成後更新庫存  
# 3. 會員管理
-提供會員資料的新增、查詢、修改、刪除功能  
 
# 4. 訂單管理

-提供查詢訂單、修改訂單、刪除訂單、列印訂單、匯出訂單等功能  
-訂單資料儲存在 MySQL 資料庫中

![image](https://github.com/user-attachments/assets/de04ea05-7ed7-4bb9-8f6f-022a31aa2cde)

# 5. 報表與匯出
-支援將訂單匯出為 PDF 或 CSV 格式  
-提供庫存報表功能，顯示當前庫存狀態  
# 6. 使用者介面
-使用 Java Swing 實現圖形化使用者介面（GUI）  
-提供報時功能，顯示當前時間  
