---
name: ga4
description: 查詢 Google Analytics 4 (GA4) 數據。當需要取得網站分析數據如熱門頁面、流量來源、用戶數、工作階段、轉換或任何 GA4 指標/維度時使用。支援自訂日期範圍和篩選。
metadata: {"source": "jdrhyne/agent-skills", "version": "1.0.0"}
---

# GA4 - Google Analytics 4 Data API

透過 Analytics Data API 查詢 GA4 資料：頁面瀏覽、工作階段、用戶、流量來源、轉換等。

## 設定（一次性）

1. 啟用 Google Analytics Data API: https://console.cloud.google.com/apis/library/analyticsdata.googleapis.com
2. 建立 OAuth 憑證或使用現有 Google Cloud 專案
3. 設定環境變數：
   - `GA4_PROPERTY_ID` - 您的 GA4 資源 ID（數字格式，例如 "123456789"）
   - `GOOGLE_CLIENT_ID` - OAuth 用戶端 ID
   - `GOOGLE_CLIENT_SECRET` - OAuth 用戶端密鑰
   - `GOOGLE_REFRESH_TOKEN` - OAuth 重新整理權杖（來自初始授權流程）

## 安裝依賴

```bash
pip install google-analytics-data google-auth-oauthlib
```

## 常用查詢

### 熱門頁面（依瀏覽數）
```bash
python3 scripts/ga4_query.py --metric screenPageViews --dimension pagePath --limit 30
```

### 熱門頁面含工作階段與用戶數
```bash
python3 scripts/ga4_query.py --metrics screenPageViews,sessions,totalUsers --dimension pagePath --limit 20
```

### 流量來源
```bash
python3 scripts/ga4_query.py --metric sessions --dimension sessionSource --limit 20
```

### 到達頁面
```bash
python3 scripts/ga4_query.py --metric sessions --dimension landingPage --limit 30
```

### 自訂日期範圍
```bash
python3 scripts/ga4_query.py --metric sessions --dimension pagePath --start 2026-01-01 --end 2026-01-15
```

### 篩選頁面路徑
```bash
python3 scripts/ga4_query.py --metric screenPageViews --dimension pagePath --filter "pagePath=~/blog/"
```

## 可用指標 (Metrics)

| 指標 | 說明 |
|------|------|
| `screenPageViews` | 頁面瀏覽數 |
| `sessions` | 工作階段數 |
| `totalUsers` | 總用戶數 |
| `newUsers` | 新用戶數 |
| `activeUsers` | 活躍用戶數 |
| `bounceRate` | 跳出率 |
| `averageSessionDuration` | 平均工作階段時長 |
| `conversions` | 轉換數 |
| `eventCount` | 事件數 |

## 可用維度 (Dimensions)

| 維度 | 說明 |
|------|------|
| `pagePath` | 頁面路徑 |
| `pageTitle` | 頁面標題 |
| `landingPage` | 到達頁面 |
| `sessionSource` | 工作階段來源 |
| `sessionMedium` | 工作階段媒介 |
| `sessionCampaignName` | 工作階段廣告活動名稱 |
| `country` | 國家 |
| `city` | 城市 |
| `deviceCategory` | 裝置類別 |
| `browser` | 瀏覽器 |
| `date` | 日期 |

## 輸出格式

- 預設：表格格式
- 加入 `--json` 輸出 JSON
- 加入 `--csv` 輸出 CSV

## 腳本說明

| 腳本 | 用途 |
|------|------|
| `scripts/ga4_auth.py` | OAuth 授權設定，取得 refresh token |
| `scripts/ga4_query.py` | 執行 GA4 數據查詢 |

## 快速開始

```bash
# 1. 產生授權 URL
python scripts/ga4_auth.py url --client-id "YOUR_CLIENT_ID"

# 2. 在瀏覽器完成授權後，交換 code 取得 token
python scripts/ga4_auth.py exchange --client-id "xxx" --client-secret "xxx" --code "授權碼"

# 3. 設定環境變數後即可查詢
python scripts/ga4_query.py --metric sessions --dimension sessionSource
```
