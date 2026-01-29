---
name: analytics-tracking
version: 1.0.0
description: 當使用者需要實施數據追蹤以衡量行銷成效時使用。適用於「GA4 設定」「事件追蹤」「轉換追蹤」「UTM 設定」等情境。
source: coreyhaines31/marketingskills
---

# Analytics Tracking

你是數據追蹤專家。目標是實施能驅動可行動商業決策的追蹤系統。

## 核心原則

> 「為決策追蹤，不只是為數據」

每個追蹤的事件都應該能回答特定問題或推動行動。

### 追蹤設計思維
1. 確定需要回答什麼問題
2. 反推需要哪些數據
3. 只追蹤必要的事件
4. 品質優於數量

---

## 初始評估

設定前先確認：

1. **現有工具**：GA4、GTM、Mixpanel、Segment？
2. **關鍵轉換**：什麼行動代表成功？
3. **決策驅動**：什麼數據會影響決策？
4. **技術架構**：SPA、Server-side、CMS？
5. **合規需求**：GDPR、CCPA？

---

## 事件命名規範

### 格式
`object_action`（小寫、底線）

### 範例
| 事件 | 說明 |
|------|------|
| `signup_started` | 開始註冊 |
| `signup_completed` | 完成註冊 |
| `cta_clicked` | 點擊 CTA |
| `form_submitted` | 表單提交 |
| `page_viewed` | 頁面瀏覽 |
| `video_played` | 影片播放 |
| `download_clicked` | 下載點擊 |

### 避免
- 混合大小寫：`SignupCompleted`
- 空格：`signup completed`
- 不一致：有時用 `click`，有時用 `clicked`

---

## 標準屬性

### 頁面數據
- `page_url`
- `page_title`
- `page_path`
- `referrer`

### 用戶識別
- `user_id`（登入用戶）
- `anonymous_id`（匿名用戶）

### 活動來源
- `utm_source`
- `utm_medium`
- `utm_campaign`
- `utm_content`
- `utm_term`

### 產品數據（如適用）
- `product_id`
- `product_name`
- `price`
- `currency`

---

## GA4 自訂事件

### 基本結構
```javascript
gtag('event', 'event_name', {
  'parameter_1': 'value_1',
  'parameter_2': 'value_2'
});
```

### 範例：CTA 點擊
```javascript
gtag('event', 'cta_clicked', {
  'cta_text': '開始免費試用',
  'cta_location': 'hero',
  'page_path': window.location.pathname
});
```

### 範例：表單提交
```javascript
gtag('event', 'form_submitted', {
  'form_name': 'contact',
  'form_location': 'footer'
});
```

---

## GTM Data Layer

### 基本結構
```javascript
dataLayer.push({
  'event': 'event_name',
  'parameter_1': 'value_1',
  'parameter_2': 'value_2'
});
```

### 範例：電商
```javascript
dataLayer.push({
  'event': 'purchase',
  'ecommerce': {
    'transaction_id': 'T12345',
    'value': 99.99,
    'currency': 'USD',
    'items': [...]
  }
});
```

---

## UTM 策略

### 命名規範

| 參數 | 用途 | 範例 |
|------|------|------|
| source | 流量來源 | google, facebook, newsletter |
| medium | 媒介類型 | cpc, email, social, organic |
| campaign | 活動名稱 | spring_sale_2024 |
| content | 區分同活動變體 | hero_button, sidebar_ad |
| term | 付費關鍵字 | running_shoes |

### UTM 建立範例
```
https://example.com/landing?
utm_source=linkedin&
utm_medium=social&
utm_campaign=product_launch&
utm_content=carousel_ad
```

---

## 轉換設定

### GA4 轉換
1. 設定為自訂事件
2. 在 GA4 中標記為轉換
3. 設定轉換價值（如適用）

### 常見轉換事件
| 事件 | 建議價值 |
|------|---------|
| `signup_completed` | 潛客價值 |
| `demo_requested` | 銷售機會價值 |
| `purchase` | 交易金額 |
| `trial_started` | 試用轉換價值 |

---

## 隱私與合規

### GDPR 要求
- Cookie 同意橫幅
- 同意前不追蹤
- 提供退出選項
- 記錄同意偏好

### 實施方式
```javascript
// 只在用戶同意後追蹤
if (userConsent === true) {
  gtag('event', 'event_name', {...});
}
```

---

## 追蹤計畫模板

```
| 事件名稱 | 觸發條件 | 參數 | 用途 |
|---------|---------|------|------|
| signup_started | 點擊註冊按鈕 | button_location | 衡量註冊意圖 |
| signup_completed | 完成註冊 | signup_method | 衡量註冊成功 |
| ... | ... | ... | ... |
```

---

## 相關技能

- **ab-test-setup**：設定 A/B 測試追蹤
- **page-cro**：轉換優化
