---
name: google-ads
description: 查詢、審計和優化 Google Ads 廣告活動。支援兩種模式：(1) API 模式用於批量操作，使用 google-ads Python SDK；(2) 瀏覽器自動化模式，適合沒有 API 存取權的用戶 - 只需開啟 ads.google.com。用於檢查廣告效能、暫停廣告活動/關鍵字、找出浪費的預算、審計轉換追蹤或優化 Google Ads 帳戶。
metadata: {"source": "jdrhyne/agent-skills", "version": "1.0.0"}
---

# Google Ads Skill

透過 API 或瀏覽器自動化管理 Google Ads 帳戶。

## 模式選擇

**檢查使用哪種模式：**

1. **API 模式** - 如果用戶有 `google-ads.yaml` 設定檔或 `GOOGLE_ADS_*` 環境變數
2. **瀏覽器模式** - 如果用戶說「我沒有 API 存取權」或只想快速檢查

```bash
# 檢查 API 設定
ls ~/.google-ads.yaml 2>/dev/null || ls google-ads.yaml 2>/dev/null
```

如果找不到設定，詢問：「您有 Google Ads API 憑證嗎？還是我應該使用瀏覽器自動化？」

---

## 瀏覽器自動化模式（通用）

**需求：** 用戶已登入 ads.google.com

### 常見工作流程

#### 取得廣告活動效能
```
1. 導航至: ads.google.com/aw/campaigns
2. 設定日期範圍（右上角日期選擇器）
3. 截取廣告活動表格
4. 解析: 廣告活動、狀態、預算、花費、轉換、每次轉換成本
```

#### 找出零轉換關鍵字（浪費的預算）
```
1. 導航至: ads.google.com/aw/keywords
2. 點擊「新增篩選器」→ 轉換 → 小於 → 1
3. 點擊「新增篩選器」→ 花費 → 大於 → [門檻，例如 $500]
4. 按花費降序排序
5. 截取表格進行分析
```

#### 暫停關鍵字/廣告活動
```
1. 導航至關鍵字或廣告活動檢視
2. 勾選要暫停的項目
3. 點擊「編輯」下拉選單 → 「暫停」
4. 確認操作
```

#### 下載報表
```
1. 導航至所需檢視（廣告活動、關鍵字等）
2. 點擊「下載」圖示（表格右上方）
3. 選擇格式（建議 CSV）
4. 檔案下載至下載資料夾
```

**詳細瀏覽器選擇器:** 請見 [references/browser-workflows.md](references/browser-workflows.md)

---

## API 模式（進階用戶）

**需求：** Google Ads API 開發者令牌 + OAuth 憑證

### 設定檢查
```bash
# 驗證 google-ads SDK
python -c "from google.ads.googleads.client import GoogleAdsClient; print('OK')"

# 檢查設定
cat ~/.google-ads.yaml
```

### 安裝依賴
```bash
pip install google-ads
```

### 設定檔 google-ads.yaml
```yaml
developer_token: YOUR_DEVELOPER_TOKEN
client_id: YOUR_CLIENT_ID.apps.googleusercontent.com
client_secret: YOUR_CLIENT_SECRET
refresh_token: YOUR_REFRESH_TOKEN
login_customer_id: YOUR_MCC_ID  # 選用，MCC 帳戶用
```

### 常見操作

#### 查詢廣告活動效能
```python
from google.ads.googleads.client import GoogleAdsClient

client = GoogleAdsClient.load_from_storage()
ga_service = client.get_service("GoogleAdsService")

query = """
    SELECT campaign.name, campaign.status,
           metrics.cost_micros, metrics.conversions,
           metrics.cost_per_conversion
    FROM campaign
    WHERE segments.date DURING LAST_30_DAYS
    ORDER BY metrics.cost_micros DESC
"""

response = ga_service.search(customer_id=CUSTOMER_ID, query=query)
```

#### 找出零轉換關鍵字
```python
query = """
    SELECT ad_group_criterion.keyword.text,
           campaign.name, metrics.cost_micros
    FROM keyword_view
    WHERE metrics.conversions = 0
      AND metrics.cost_micros > 500000000
      AND segments.date DURING LAST_90_DAYS
    ORDER BY metrics.cost_micros DESC
"""
```

#### 暫停關鍵字
```python
operations = []
for keyword_id in keywords_to_pause:
    operation = client.get_type("AdGroupCriterionOperation")
    operation.update.resource_name = f"customers/{customer_id}/adGroupCriteria/{ad_group_id}~{keyword_id}"
    operation.update.status = client.enums.AdGroupCriterionStatusEnum.PAUSED
    operations.append(operation)

service.mutate_ad_group_criteria(customer_id=customer_id, operations=operations)
```

**完整 API 參考:** 請見 [references/api-setup.md](references/api-setup.md)

---

## 審計檢查清單

任何 Google Ads 帳戶的快速健康檢查：

| 檢查項目 | 瀏覽器路徑 | 查看內容 |
|---------|-----------|---------|
| 零轉換關鍵字 | Keywords → 篩選: Conv<1, Cost>$500 | 浪費的預算 |
| 空廣告群組 | Ad Groups → 篩選: Ads=0 | 沒有廣告素材在執行 |
| 政策違規 | Campaigns → 狀態欄 | 黃色警告圖示 |
| 優化分數 | Overview 頁面（右上） | 低於 70% = 需要處理 |
| 轉換追蹤 | Tools → Conversions | 未啟用/無近期數據 |

---

## 輸出格式

報告發現時，使用表格：

```markdown
## 廣告活動效能（過去 30 天）
| 廣告活動 | 花費 | 轉換 | CPA | 狀態 |
|---------|------|------|-----|------|
| 品牌字  | $5K  | 50   | $100| ✅ 良好 |
| SDK Web | $10K | 2    | $5K | ❌ 建議暫停 |

## 建議行動
1. **暫停**: SDK Web 廣告活動（$5K CPA）
2. **增加**: 品牌字預算（表現強勁）
```

---

## 疑難排解

### 瀏覽器模式問題
- **看不到數據**: 檢查用戶是否在正確帳戶（右上角帳戶選擇器）
- **載入緩慢**: Google Ads UI 較重；等待表格完全載入
- **Session 過期**: 用戶需重新登入 ads.google.com

### API 模式問題
- **認證失敗**: 更新 OAuth token，檢查 `google-ads.yaml`
- **開發者令牌被拒**: 確保令牌已核准（非測試模式）
- **客戶 ID 錯誤**: 使用 10 位數 ID，不含破折號
