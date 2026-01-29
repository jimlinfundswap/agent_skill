---
name: gsc
description: 查詢 Google Search Console 的 SEO 數據 - 搜尋關鍵字、熱門頁面、CTR 機會、URL 檢查和網站地圖。用於分析搜尋效能、找出優化機會或檢查索引狀態。
metadata: {"source": "jdrhyne/agent-skills", "version": "1.0.0"}
---

# Google Search Console Skill

透過 GSC API 查詢搜尋分析、索引狀態和 SEO 洞察。

## 設定

1. **憑證**: 使用與 GA4 skill 相同的 OAuth 憑證（存於 `.env`）
2. **Scopes**: 需在 Google Cloud OAuth consent screen 加入 `webmasters.readonly` scope
3. **存取權**: 您的 Google 帳戶必須有該 Search Console 資源的存取權

## 安裝依賴

```bash
pip install google-auth google-auth-oauthlib google-api-python-client
```

## 可用指令

### 列出所有網站
```bash
python scripts/gsc_query.py sites
```

### 熱門搜尋關鍵字
```bash
python scripts/gsc_query.py top-queries \
  --site "https://www.example.com" \
  --days 28 \
  --limit 20
```

### 熱門頁面（依流量）
```bash
python scripts/gsc_query.py top-pages \
  --site "https://www.example.com" \
  --days 28 \
  --limit 20
```

### 找出低 CTR 機會
高曝光但低點擊率 = 優化機會：
```bash
python scripts/gsc_query.py opportunities \
  --site "https://www.example.com" \
  --days 28 \
  --min-impressions 100
```

### 檢查 URL 索引狀態
```bash
python scripts/gsc_query.py inspect-url \
  --site "https://www.example.com" \
  --url "/products/widget"
```

### 列出網站地圖
```bash
python scripts/gsc_query.py sitemaps \
  --site "https://www.example.com"
```

### 原始搜尋分析（JSON）
```bash
python scripts/gsc_query.py search-analytics \
  --site "https://www.example.com" \
  --days 28 \
  --dimensions query page \
  --limit 100
```

## 可用維度

| 維度 | 說明 |
|------|------|
| `query` | 搜尋關鍵字 |
| `page` | 著陸頁面 URL |
| `country` | 國家代碼 |
| `device` | DESKTOP, MOBILE, TABLET |
| `date` | 日期 |

## 回傳指標

| 指標 | 說明 |
|------|------|
| **clicks** | 來自搜尋的點擊次數 |
| **impressions** | 在搜尋結果中顯示的次數 |
| **ctr** | 點擊率（clicks/impressions） |
| **position** | 平均排名位置 |

## SEO 應用場景

1. **內容優化**: 找出高曝光/低 CTR 頁面 → 改善標題和描述
2. **關鍵字研究**: 查看哪些關鍵字帶來流量 → 針對這些主題創作更多內容
3. **技術 SEO**: 檢查索引狀態，找出爬取問題
4. **排名追蹤**: 監控排名位置隨時間的變化
5. **Sitemap 健康度**: 驗證 sitemap 已提交且無錯誤

## 注意事項

- 數據有約 3 天的延遲（GSC 限制）
- 憑證與 GA4 skill 共用
- URL 檢查功能需要該頁面在該資源中
