
# 系統架構
**src/**  
├── controller/  
│   ├── member/  
│   │   ├── AddMemberErrorUI.java  
│   │   ├── AddMemberSuccessUI.java  
│   │   ├── AddMemberUI.java  
│   │   ├── LoginErrorUI.java  
│   │   ├── LoginSuccessUI.java  
│   │   └── LoginUI.java  
│   └── porder/  
│       ├── AddPorderUI.java    
│       ├── PorderMainUI.java  
│       └── PorderManagerUI.java  
│  
├── dao/  
│   ├── MemberDao.java  
│   ├── PorderDao.java   
│   └── impl/  
│       ├── MemberDaoImpl.java  
│       └── PorderDaoImpl.java   
│  
├── model/  
│   ├── Member.java   
│   └── Porder.java  
│  
├── service/  
│   ├── MemberService.java  
│   ├── PorderService.java   
│   └── impl/  
│       ├── MemberServiceImpl.java   
│       └── PorderServiceImpl.java   
│  
└── util/   
    ├── DbConnection.java             
    └── Tool.java        

       
 
# 功能介面
# 1. 點餐表單
-提供飲料選擇，包含多種飲料品項  
-自動加入總金額 

![image](https://github.com/user-attachments/assets/0d2fd640-d00a-4812-9ada-469aca6e7d70)

  
 
# 2. 庫存資料管理
-提供庫存數量，確保庫存狀態  
-提供庫存表格顯示，方便查看當前庫存狀態  
-可從資料庫加載庫存數據，並在訂單完成後更新庫存 

![image](https://github.com/user-attachments/assets/9c4818df-28f0-424f-a85c-7aa6440efe68)

# 3. 會員(客戶)管理
-提供會員資料的新增、查詢、修改、刪除功能

![image](https://github.com/user-attachments/assets/799af172-5f9d-4151-8cbb-2c6e11ea717b)


 
# 4. 訂單管理

-提供查詢訂單、修改訂單、刪除訂單、列印訂單、匯出訂單等功能  



![image](https://github.com/user-attachments/assets/ebaebf45-1644-4911-bb23-b42f434b6355)



# 5. 報表與匯出
-訂單可匯出成 Excel或PDF檔 
-提供庫存表單，顯示當前庫存狀態


![image](https://github.com/user-attachments/assets/fd7c83c6-996f-4f42-835a-d149813ba4b5)


# 6. 其它附加功能
  
-提供報時功能，顯示當前時間  
