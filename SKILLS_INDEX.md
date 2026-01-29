# Skills 完整索引

本檔案提供所有 skills 的詳細索引，支援多維度檢索。

## 目錄

- [使用場景指南（以好好證券為例）](#使用場景指南以好好證券為例)
- [按類別索引](#按類別索引)
- [按難度索引](#按難度索引)
- [按來源索引](#按來源索引)

---

## 使用場景指南（以好好證券為例）

> 本章節以好好證券為對象，說明每個 skill 的具體使用場景與組合應用方式。

### 📌 好好證券業務背景

好好證券是一家線上證券商，主要業務包括：
- **台股交易**：現股、零股、定期定額
- **美股交易**：美股、ETF
- **開戶服務**：線上開戶、數位身分驗證
- **投資教育**：投資知識、市場分析
- **App/Web 平台**：交易介面、帳務查詢

**核心目標**：
1. 獲取新客戶（開戶轉換）
2. 提升用戶活躍度（交易頻率）
3. 推廣新功能（定期定額、美股）
4. 建立品牌信任（投資教育內容）

---

### 🎯 單一 Skill 使用場景

#### 📊 Analytics（數據分析）

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **GA4** | 分析官網與 App 用戶行為 | 查詢「開戶申請頁」跳出率、「定期定額介紹頁」停留時間、各流量來源的開戶轉換率 |
| **GSC** | 監控 SEO 表現與搜尋排名 | 追蹤「零股怎麼買」「美股開戶」等關鍵字排名，找出 CTR 低但曝光高的優化機會 |
| **Google Ads** | 優化付費廣告投放 | 分析「證券開戶」廣告的 CPA，暫停轉換率低於 1% 的關鍵字 |
| **GA4 Implementation** | 設定完整的事件追蹤 | 追蹤「開戶按鈕點擊」「身分驗證完成」「首次下單」等關鍵事件 |
| **GTM** | 管理追蹤碼與事件 | 設定「申購定期定額」「開啟美股功能」等自訂事件觸發 |

#### 📣 Marketing - CRO（轉換率優化）

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **Page CRO** | 優化開戶落地頁轉換 | 分析開戶頁的標題、CTA 按鈕、信任元素（金管會許可證號、資安認證），提升訪客→開戶申請的轉換率 |
| **Signup Flow CRO** | 優化開戶流程 | 減少開戶步驟（身分證上傳→人臉辨識→銀行驗證），分析每步驟流失率，簡化必填欄位 |
| **Onboarding CRO** | 新戶引導優化 | 設計新開戶用戶的引導流程：「完成首次入金」→「執行第一筆交易」→「設定定期定額」 |
| **Form CRO** | 優化開戶表單 | 減少開戶表單欄位、使用自動填入、即時驗證身分證字號格式 |
| **Popup CRO** | 設計促銷彈窗 | 離開意圖彈窗：「首次下單享手續費折讓」、滾動觸發：「定期定額 0 手續費活動」 |
| **Paywall Upgrade CRO** | 升級服務推廣 | 推廣美股功能：「您已熟悉台股交易，現在開通美股只需 1 分鐘」 |

#### 📣 Marketing - 文案與內容

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **Copywriting** | 撰寫開戶頁文案 | 「3 分鐘完成開戶，立即享有業界最低手續費」「零股也能買台積電，小資族投資首選」 |
| **Copy Editing** | 審視現有行銷文案 | 用七遍編輯法檢查定期定額介紹頁，確保清晰、具體、有信任感 |
| **Email Sequence** | 設計新戶培養信 | 開戶後 7 天序列：Day 1 歡迎信→Day 3 首次交易教學→Day 5 定期定額介紹→Day 7 客服支援 |
| **Social Content** | 社群內容策略 | LinkedIn：投資知識文章；Instagram：圖表化市場數據；Facebook：用戶見證與活動 |
| **Content Strategy** | 內容行銷規劃 | 建立投資教育內容支柱：「新手入門」「技術分析」「ETF 投資」「美股攻略」 |

#### 📣 Marketing - SEO

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **SEO Audit** | 官網 SEO 健檢 | 檢查頁面載入速度、行動版體驗、Meta 標籤、內部連結結構 |
| **Programmatic SEO** | 規模化 SEO 頁面 | 建立「[股票代號] 介紹」「[ETF 名稱] 分析」「[產業] 概念股」等模板頁面 |
| **Schema Markup** | 結構化數據實作 | 為「常見問題」頁面加入 FAQPage Schema，讓 Google 顯示 FAQ 豐富摘要 |
| **Competitor Alternatives** | 競爭對手比較頁 | 「好好證券 vs 某某證券」「好好證券手續費比較」等頁面，捕獲比較型搜尋 |

#### 📣 Marketing - 測試與成長

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **Analytics Tracking** | 建立追蹤計畫 | 定義關鍵事件：`account_opened`、`first_deposit`、`first_trade`、`regular_invest_started` |
| **A/B Test Setup** | 測試開戶頁變體 | 測試不同 CTA 文案：「立即開戶」vs「3 分鐘免費開戶」vs「開戶享首單免手續費」 |
| **Free Tool Strategy** | 免費工具行銷 | 建立「投資報酬率計算機」「定期定額試算器」「美股成本攤平計算」等工具 |
| **Referral Program** | 好友推薦計畫 | 「推薦好友開戶，雙方各得 100 元」「推薦 5 人升級 VIP 手續費優惠」 |
| **Paid Ads** | 付費廣告策略 | Google Search：「零股開戶」「美股券商推薦」；Meta：再行銷未完成開戶用戶 |

#### 📣 Marketing - 策略

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **Marketing Ideas** | 行銷點子發想 | 瀏覽 139 個策略，選擇適合的：免費工具、Podcast 贊助、投資 KOL 合作 |
| **Marketing Psychology** | 應用心理學原則 | 稀缺性：「限時 0 手續費」；社會認同：「10 萬用戶選擇」；損失厭惡：「別錯過這波行情」 |
| **Pricing Strategy** | 手續費方案設計 | 設計階梯式手續費：一般戶/VIP/VVIP，分析各方案的用戶分布與貢獻 |
| **Launch Strategy** | 新功能發布 | 美股交易功能上線：預熱→早鳥優惠→正式發布→擴大推廣 |
| **Product Marketing Context** | 建立行銷基礎文件 | 定義好好證券的目標客群、競爭優勢、客戶痛點、品牌聲音 |

#### 🌐 Web Development

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **建立美觀落地頁** | 活動落地頁製作 | 「定期定額 0 手續費活動」落地頁、「美股交易上線」活動頁 |
| **Frontend Design** | 交易介面優化 | 設計更直覺的下單介面、股票報價頁面 |
| **Theme Factory** | 品牌視覺規範 | 定義好好證券的色彩系統、字體規範、按鈕樣式 |
| **UI/UX Pro Max** | App 介面設計 | 設計持股總覽儀表板、交易歷史頁面 |
| **Canvas Design** | 行銷視覺製作 | 製作股市數據圖表、投資績效視覺化圖片 |

#### 📝 Documentation

| Skill | 好好證券使用場景 | 具體例子 |
|-------|-----------------|---------|
| **撰寫 PRD** | 新功能需求文件 | 撰寫「定期定額 2.0」功能的 PRD，包含商業目標、用戶故事、功能規格 |
| **撰寫規格文件** | 功能規格書 | 撰寫「美股盤前盤後交易」的技術規格與業務規則 |
| **PPTX** | 內部報告簡報 | 製作月度行銷成效簡報、季度 OKR 回顧 |
| **XLSX** | 數據分析報表 | 製作開戶轉換漏斗分析、廣告 ROI 分析表 |
| **PDF** | 正式文件生成 | 製作「投資新手指南」PDF、「手續費說明」文件 |
| **Brand Guidelines** | 品牌規範檢查 | 確保所有行銷素材符合好好證券的品牌語氣 |
| **Internal Comms** | 內部公告撰寫 | 新功能上線公告、活動說明信 |

---

### 🔗 Skill 組合應用場景

#### 場景 1：提升開戶轉換率

**目標**：將官網訪客→完成開戶的轉換率從 2% 提升到 4%

| 步驟 | 使用 Skill | 執行內容 |
|------|-----------|---------|
| 1. 了解現況 | GA4 | 查詢開戶頁流量、跳出率、各步驟完成率 |
| 2. 診斷問題 | Page CRO | 分析開戶頁的價值主張、CTA、信任元素 |
| 3. 優化流程 | Signup Flow CRO + Form CRO | 簡化開戶步驟、減少表單欄位 |
| 4. 改善文案 | Copywriting + Copy Editing | 重寫開戶頁標題和 CTA，強調「3 分鐘」「0 元」等具體利益 |
| 5. 設計測試 | A/B Test Setup | 測試 2-3 個頁面變體 |
| 6. 追蹤設定 | Analytics Tracking + GTM | 設定每步驟的事件追蹤 |
| 7. 分析結果 | GA4 | 評估測試結果，選擇勝出版本 |

---

#### 場景 2：推廣定期定額功能

**目標**：讓更多現有用戶開始使用定期定額

| 步驟 | 使用 Skill | 執行內容 |
|------|-----------|---------|
| 1. 建立基礎 | Product Marketing Context | 定義定期定額的目標客群、價值主張、異議處理 |
| 2. 製作落地頁 | 建立美觀落地頁 + Copywriting | 製作功能介紹頁，強調「每月 1000 元起」「自動扣款」等利益 |
| 3. Email 推廣 | Email Sequence | 設計 5 封序列：功能介紹→試算範例→成功案例→限時優惠→最後提醒 |
| 4. 彈窗提醒 | Popup CRO | 在交易完成頁顯示：「設定定期定額，讓投資自動化」 |
| 5. 社群擴散 | Social Content | 製作定期定額教學圖文、投資心得分享 |
| 6. 效果追蹤 | GA4 + Analytics Tracking | 追蹤「定期定額申購」事件，分析轉換漏斗 |

---

#### 場景 3：SEO 內容行銷

**目標**：透過 SEO 獲取更多有投資意圖的自然流量

| 步驟 | 使用 Skill | 執行內容 |
|------|-----------|---------|
| 1. 現況診斷 | SEO Audit + GSC | 檢查網站技術 SEO、分析現有關鍵字排名 |
| 2. 內容策略 | Content Strategy | 規劃內容支柱：新手教學、股票分析、ETF 介紹、美股攻略 |
| 3. 規模化頁面 | Programmatic SEO | 建立「[股票代號] 怎麼買」「[ETF] 配息」模板頁面 |
| 4. 競爭頁面 | Competitor Alternatives | 建立「好好證券 vs XX 證券」比較頁 |
| 5. 結構化數據 | Schema Markup | 為 FAQ、教學文章加入 Schema |
| 6. 成效追蹤 | GSC + GA4 | 監控排名變化、自然流量、轉換率 |

---

#### 場景 4：付費廣告優化

**目標**：降低開戶 CPA 並提升廣告 ROI

| 步驟 | 使用 Skill | 執行內容 |
|------|-----------|---------|
| 1. 分析現況 | Google Ads | 查詢各廣告活動的 CPA、CTR、轉換率 |
| 2. 優化策略 | Paid Ads | 調整出價、暫停低效關鍵字、測試新受眾 |
| 3. 改善落地頁 | Page CRO + Copywriting | 確保廣告→落地頁訊息一致，優化頁面轉換 |
| 4. A/B 測試 | A/B Test Setup | 測試不同廣告文案和落地頁組合 |
| 5. 自動化 | Google Ads Scripts | 建立自動暫停低效廣告、預算調整腳本 |
| 6. 再行銷 | GTM + Paid Ads | 對未完成開戶用戶進行再行銷 |

---

#### 場景 5：新功能發布（美股交易）

**目標**：成功上線美股交易功能並獲取用戶

| 步驟 | 使用 Skill | 執行內容 |
|------|-----------|---------|
| 1. 上市規劃 | Launch Strategy | 規劃五階段發布：內部測試→Beta→早鳥→正式→擴大 |
| 2. 定位文件 | Product Marketing Context | 定義美股功能的目標客群、競爭優勢、訊息框架 |
| 3. 落地頁 | 建立美觀落地頁 + Copywriting | 製作美股介紹頁，突出「直接投資 Apple、Tesla」 |
| 4. 預熱活動 | Email Sequence + Social Content | 發送預告信、社群倒數貼文 |
| 5. 發布推廣 | Paid Ads + Popup CRO | 投放廣告、對現有用戶顯示開通提醒 |
| 6. 用戶引導 | Onboarding CRO | 設計美股開通→首次交易的引導流程 |
| 7. 效果追蹤 | GA4 + Analytics Tracking | 追蹤美股開通率、首次交易率 |

---

#### 場景 6：好友推薦計畫

**目標**：透過現有用戶帶來新開戶

| 步驟 | 使用 Skill | 執行內容 |
|------|-----------|---------|
| 1. 計畫設計 | Referral Program | 設計獎勵結構：推薦人得 100 元、被推薦人得 100 元 |
| 2. 心理學應用 | Marketing Psychology | 應用互惠原則、社會認同、稀缺性 |
| 3. 落地頁 | 建立美觀落地頁 + Copywriting | 製作推薦計畫介紹頁 |
| 4. 觸發時機 | Popup CRO | 在完成交易後顯示推薦邀請 |
| 5. Email 推廣 | Email Sequence | 發送推薦計畫介紹信、推薦成功通知 |
| 6. 追蹤分析 | Analytics Tracking + GA4 | 追蹤推薦連結點擊、推薦開戶、獎勵發放 |

---

#### 場景 7：投資教育內容行銷

**目標**：建立投資知識內容，吸引潛在客戶

| 步驟 | 使用 Skill | 執行內容 |
|------|-----------|---------|
| 1. 內容規劃 | Content Strategy | 定義內容支柱：入門教學、技術分析、ETF、美股 |
| 2. SEO 優化 | SEO Audit + Schema Markup | 確保文章 SEO 友善，加入結構化數據 |
| 3. 文案撰寫 | Copywriting + Copy Editing | 撰寫易懂的教學文章 |
| 4. 社群擴散 | Social Content | 將文章轉化為社群內容：IG 輪播、LinkedIn 文章 |
| 5. 免費工具 | Free Tool Strategy | 建立配套工具：投資計算機、股票篩選器 |
| 6. 轉換設計 | Page CRO + Popup CRO | 在文章中嵌入開戶 CTA，設計離開意圖彈窗 |

---

### 📋 快速參考：按目標選擇 Skill

| 業務目標 | 建議 Skill 組合 |
|---------|----------------|
| **提升開戶轉換** | Page CRO + Signup Flow CRO + Form CRO + Copywriting + A/B Test Setup |
| **獲取自然流量** | SEO Audit + Content Strategy + Programmatic SEO + GSC |
| **優化付費廣告** | Google Ads + Paid Ads + Page CRO + Analytics Tracking |
| **推廣新功能** | Launch Strategy + Email Sequence + Popup CRO + Social Content |
| **提升用戶活躍** | Onboarding CRO + Email Sequence + Referral Program |
| **建立品牌信任** | Content Strategy + Social Content + Brand Guidelines |
| **數據驅動決策** | GA4 + GSC + Analytics Tracking + A/B Test Setup |

---

## 按類別索引

### 🌐 Web Development

> 網頁開發相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [建立美觀落地頁](./skills/web-development/create-landing-page/SKILL.md) | 快速建立專業級的響應式落地頁 | 🟢 Beginner | Custom |
| [Canvas Design](./skills/web-development/canvas-design/SKILL.md) | 使用程式碼創作高品質視覺藝術的海報或圖表 | 🔴 Advanced | Anthropic |
| [Frontend Design](./skills/web-development/frontend-design/SKILL.md) | 開發互動式網頁前端介面 | 🟡 Intermediate | Anthropic |
| [Theme Factory](./skills/web-development/theme-factory/SKILL.md) | 建立一致的網頁色彩、字體與視覺規範 | 🟡 Intermediate | Anthropic |
| [UI/UX Pro Max](./skills/web-development/ui-ux-pro-max/SKILL.md) | 設計儀表板、SaaS 或電商的現代化介面 | 🟡 Intermediate | Other |

### 📝 Documentation

> 文件撰寫相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [撰寫產品需求文件 (PRD)](./skills/documentation/write-prd/SKILL.md) | 撰寫結構完整的商業導向 PRD | 🟡 Intermediate | Custom |
| [撰寫規格文件](./skills/documentation/write-specification/SKILL.md) | 以 PM 角度撰寫清楚的功能規格書 | 🟡 Intermediate | Custom |
| [DOCX](./skills/documentation/docx/SKILL.md) | 生成合約、報告等 Word 文件 | 🟡 Intermediate | Anthropic |
| [PDF](./skills/documentation/pdf/SKILL.md) | 生成正式 PDF 文件或報表 | 🟡 Intermediate | Anthropic |
| [PPTX](./skills/documentation/pptx/SKILL.md) | 生成提案或報告用的 PowerPoint 簡報 | 🟡 Intermediate | Anthropic |
| [XLSX](./skills/documentation/xlsx/SKILL.md) | 生成數據分析或報表用的 Excel 試算表 | 🟡 Intermediate | Anthropic |
| [Brand Guidelines](./skills/documentation/brand-guidelines/SKILL.md) | 檢查內容是否符合品牌語氣與規範 | 🟢 Beginner | Anthropic |
| [Doc Coauthoring](./skills/documentation/doc-coauthoring/SKILL.md) | 與您協作編輯同一份文件 | 🟡 Intermediate | Anthropic |
| [Internal Comms](./skills/documentation/internal-comms/SKILL.md) | 撰寫公司內部公告或信件 | 🟢 Beginner | Anthropic |

### ⚡ Productivity

> 生產力與任務規劃相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Create Plan](./skills/productivity/create-plan/SKILL.md) | 將複雜需求拆解為可執行的步驟清單 | 🟡 Intermediate | OpenAI |
| [Ask Questions](./skills/productivity/ask-questions-if-underspecified/SKILL.md) | 當需求不清楚時，主動向您提問確認 | 🟢 Beginner | Skill Creator AI |
| [Code Documentation](./skills/productivity/code-documentation/SKILL.md) | 為程式碼撰寫標準化的文件與註解 | 🟢 Beginner | Skill Creator AI |

### 🧪 Testing

> 測試與驗證相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [人工測試腳本](./skills/testing/manual-test-script/SKILL.md) | 撰寫標準化的人工測試案例，適合 QA/PM/業務執行 | 🟢 Beginner | Custom |
| [Webapp Testing](./skills/testing/webapp-testing/SKILL.md) | 使用 Playwright 自動化測試網頁 | 🟡 Intermediate | Anthropic |
| [QA Regression](./skills/testing/qa-regression/SKILL.md) | 建立標準化的 QA 回歸測試架構 | 🟢 Beginner | Skill Creator AI |
| [TDD](./skills/testing/test-driven-development/SKILL.md) | 先寫測試再寫程式，確保程式碼邏輯正確 | 🔴 Advanced | Obra Superpowers |

### 🚀 Deployment

> 部署與維運相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [HuggingFace CLI](./skills/ai-ml-tools/hugging-face-cli/SKILL.md) | 下載/上傳 AI 模型與資料集 | 🟡 Intermediate | HuggingFace |
| [Fix failing CI](./skills/devops/gh-fix-ci/SKILL.md) | 自動分析並修復 GitHub CI 錯誤 | 🟡 Intermediate | OpenAI |

### ♾️ DevOps

> 開發維運與自動化相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Fix failing CI](./skills/devops/gh-fix-ci/SKILL.md) | 自動分析並修復 GitHub CI 錯誤 | 🟡 Intermediate | OpenAI |
| [Address PR comments](./skills/devops/gh-address-comments/SKILL.md) | 快速處理 GitHub PR 的審查意見 | 🟡 Intermediate | OpenAI |

### 💾 Database

> 資料庫操作相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Database Design](./skills/development/database-design/SKILL.md) | 設計正規化的資料庫與優化查詢效能 | 🔴 Advanced | Skill Creator AI |

### 🔌 API Integration

> API 整合相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Code Documentation](./skills/productivity/code-documentation/SKILL.md) | 撰寫標準的 API 規格文件 (Swagger) | 🟢 Beginner | Skill Creator AI |
| [HuggingFace CLI](./skills/ai-ml-tools/hugging-face-cli/SKILL.md) | 下載/上傳 AI 模型與資料集 | 🟡 Intermediate | HuggingFace |

### 👁️ Code Review

> 程式碼審查相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Address PR comments](./skills/devops/gh-address-comments/SKILL.md) | 快速處理 GitHub PR 的審查意見 | 🟡 Intermediate | OpenAI |

### 🔧 Refactoring

> 重構相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Ask Questions](./skills/productivity/ask-questions-if-underspecified/SKILL.md) | 透過提問釐清需求以避免無效重構 | 🟢 Beginner | Skill Creator AI |
| [TDD](./skills/testing/test-driven-development/SKILL.md) | 重構時的測試保護網 | 🔴 Advanced | Obra Superpowers |
| [Code Documentation](./skills/productivity/code-documentation/SKILL.md) | 重構時同步更新文件 | 🟢 Beginner | Skill Creator AI |

### 🐛 Debugging

> 除錯相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Code Debugging Analysis](./skills/debugging/code-debugging-analysis/SKILL.md) | 使用系統化方法分析並解決程式錯誤 | 🟡 Intermediate | Custom |
| [Systematic Debugging](./skills/debugging/systematic-debugging/SKILL.md) | 透過四階段分析找出 Bug 的根本原因 | 🔴 Advanced | Obra Superpowers |

### 📊 Analytics

> 數據分析與追蹤相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [GA4](./skills/analytics/ga4/SKILL.md) | 查詢 Google Analytics 4 數據（頁面、流量、轉換） | 🟡 Intermediate | jdrhyne/agent-skills |
| [GSC](./skills/analytics/gsc/SKILL.md) | 查詢 Google Search Console SEO 數據 | 🟡 Intermediate | jdrhyne/agent-skills |
| [Google Ads](./skills/analytics/google-ads/SKILL.md) | 查詢與優化 Google Ads 廣告活動 | 🔴 Advanced | jdrhyne/agent-skills |
| [GA4 Implementation](./skills/analytics/ga4-implementation/SKILL.md) | GA4 追蹤實作指南（事件、BigQuery、隱私合規） | 🟡 Intermediate | wookstar |
| [GTM](./skills/analytics/gtm/SKILL.md) | Google Tag Manager 容器設定與管理 | 🟡 Intermediate | wookstar |
| [Google Ads Scripts](./skills/analytics/google-ads-scripts/SKILL.md) | Google Ads 自動化腳本開發 | 🔴 Advanced | wookstar |

### 📣 Marketing

> 行銷策略與活動執行相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Marketing Campaigns](./skills/marketing/marketing-campaigns/SKILL.md) | 行銷活動規劃、UTM 管理、SEO/GEO 優化、內容策略 | 🟡 Intermediate | SpillwaveSolutions |
| [Page CRO](./skills/marketing/cro/page-cro/SKILL.md) | 落地頁/首頁轉換率優化 | 🟡 Intermediate | coreyhaines31 |
| [Signup Flow CRO](./skills/marketing/cro/signup-flow-cro/SKILL.md) | 註冊流程優化與流失率降低 | 🟡 Intermediate | coreyhaines31 |
| [Onboarding CRO](./skills/marketing/cro/onboarding-cro/SKILL.md) | 用戶引導與啟用率優化 | 🟡 Intermediate | coreyhaines31 |
| [Form CRO](./skills/marketing/cro/form-cro/SKILL.md) | 表單優化與完成率提升 | 🟡 Intermediate | coreyhaines31 |
| [Popup CRO](./skills/marketing/cro/popup-cro/SKILL.md) | 彈窗/模態視窗轉換優化 | 🟡 Intermediate | coreyhaines31 |
| [Paywall Upgrade CRO](./skills/marketing/cro/paywall-upgrade-cro/SKILL.md) | 付費牆與升級畫面優化 | 🟡 Intermediate | coreyhaines31 |
| [Copywriting](./skills/marketing/copywriting/copywriting/SKILL.md) | 行銷文案撰寫（首頁、落地頁、定價頁） | 🟡 Intermediate | coreyhaines31 |
| [Copy Editing](./skills/marketing/copywriting/copy-editing/SKILL.md) | 行銷文案編輯與潤飾 | 🟡 Intermediate | coreyhaines31 |
| [Email Sequence](./skills/marketing/copywriting/email-sequence/SKILL.md) | Email 行銷序列設計（歡迎、培養、喚回） | 🟡 Intermediate | coreyhaines31 |
| [Social Content](./skills/marketing/copywriting/social-content/SKILL.md) | 社群媒體內容策略與撰寫 | 🟡 Intermediate | coreyhaines31 |
| [Content Strategy](./skills/marketing/copywriting/content-strategy/SKILL.md) | 內容策略規劃（SEO、分享型內容） | 🟡 Intermediate | coreyhaines31 |
| [SEO Audit](./skills/marketing/seo/seo-audit/SKILL.md) | 網站 SEO 審核與診斷 | 🟡 Intermediate | coreyhaines31 |
| [Programmatic SEO](./skills/marketing/seo/programmatic-seo/SKILL.md) | 規模化 SEO 頁面建立 | 🔴 Advanced | coreyhaines31 |
| [Schema Markup](./skills/marketing/seo/schema-markup/SKILL.md) | 結構化數據/Rich Snippets 實作 | 🟡 Intermediate | coreyhaines31 |
| [Competitor Alternatives](./skills/marketing/seo/competitor-alternatives/SKILL.md) | 競爭對手比較頁與替代方案頁 | 🟡 Intermediate | coreyhaines31 |
| [Analytics Tracking](./skills/marketing/testing/analytics-tracking/SKILL.md) | 數據追蹤設定（GA4、GTM、UTM） | 🟡 Intermediate | coreyhaines31 |
| [A/B Test Setup](./skills/marketing/testing/ab-test-setup/SKILL.md) | A/B 測試規劃與執行 | 🟡 Intermediate | coreyhaines31 |
| [Free Tool Strategy](./skills/marketing/growth/free-tool-strategy/SKILL.md) | 免費工具行銷策略（工程行銷） | 🟡 Intermediate | coreyhaines31 |
| [Referral Program](./skills/marketing/growth/referral-program/SKILL.md) | 推薦計畫與聯盟計畫設計 | 🟡 Intermediate | coreyhaines31 |
| [Paid Ads](./skills/marketing/growth/paid-ads/SKILL.md) | 付費廣告策略（Google、Meta、LinkedIn） | 🟡 Intermediate | coreyhaines31 |
| [Marketing Ideas](./skills/marketing/strategy/marketing-ideas/SKILL.md) | 139 個 SaaS 行銷策略點子庫 | 🟡 Intermediate | coreyhaines31 |
| [Marketing Psychology](./skills/marketing/strategy/marketing-psychology/SKILL.md) | 行銷心理學與說服原則 | 🟡 Intermediate | coreyhaines31 |
| [Pricing Strategy](./skills/marketing/strategy/pricing-strategy/SKILL.md) | SaaS 定價策略與方案設計 | 🟡 Intermediate | coreyhaines31 |
| [Launch Strategy](./skills/marketing/strategy/launch-strategy/SKILL.md) | 產品發布與 Product Hunt 策略 | 🟡 Intermediate | coreyhaines31 |
| [Product Marketing Context](./skills/marketing/strategy/product-marketing-context/SKILL.md) | 產品行銷基礎文件建立 | 🟢 Beginner | coreyhaines31 |

### 🤖 AI/ML Tools

> AI/ML 開發相關工具

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [HuggingFace CLI](./skills/ai-ml-tools/hugging-face-cli/SKILL.md) | 下載/上傳 AI 模型與資料集 | 🟡 Intermediate | HuggingFace |

### 🛠️ Agent Tools

> Agent 能力擴展與創作工具

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Algorithmic Art](./skills/custom/algorithmic-art/SKILL.md) | 使用程式碼繪製幾何圖形與動態視覺 | 🔴 Advanced | Anthropic |
| [MCP Builder](./skills/custom/mcp-builder/SKILL.md) | 將現有 API 包裝成 AI 可用的 MCP 工具 | 🔴 Advanced | Anthropic |
| [Skill Creator](./skills/custom/skill-creator/SKILL.md) | 創建新的 SKILL.md 讓 AI 學會新能力 | 🟡 Intermediate | Anthropic |
| [Web Artifacts Builder](./skills/custom/web-artifacts-builder/SKILL.md) | 建立與管理互動式網頁元件 | 🟡 Intermediate | Anthropic |
| [Slack GIF Creator](./skills/custom/slack-gif-creator/SKILL.md) | 自動生成適合 Slack 溝通的 GIF 動畫 | 🟢 Beginner | Anthropic |

### 🤝 Collaboration

> 團隊協作與溝通相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [Brainstorming](./skills/collaboration/brainstorming/SKILL.md) | 透過對話引導，將模糊想法轉化為具體架構 | 🟢 Beginner | Obra Superpowers |

### 📊 Strategy

> 商業策略與品牌體驗相關的 skills

| Skill 名稱 | 簡述 | 難度 | 來源 |
|-----------|------|------|------|
| [鉛獲取策略師](./skills/strategy/100m-leads-strategist/SKILL.md) | 運用《$100M Leads》框架倍增潛在客戶獲取量 | 🟡 Intermediate | Custom |
| [大滿貫要約策略師](./skills/strategy/grand-slam-offer-strategist/SKILL.md) | 運用《$100M Offers》框架設計高轉換率的產品報價策略 | 🟡 Intermediate | Custom |
| [峰值體驗策略顧問](./skills/strategy/peak-experience-consultant/SKILL.md) | 運用 MOT 理論分析品牌體驗，結合外部資料提供策略建議 | 🟡 Intermediate | Custom |
| [逆向工程分析師](./skills/strategy/reverse-engineering-analyst/SKILL.md) | 系統性分析未知程式碼與系統，將黑盒子轉化為技術文件 | 🔴 Advanced | Custom |

---

## 按難度索引

### 🟢 Beginner（初級）
適合剛開始使用 agent skills 的使用者

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [建立美觀落地頁](./skills/web-development/create-landing-page/SKILL.md) | Web Development | 快速建立專業級的響應式落地頁 |
| [Brand Guidelines](./skills/documentation/brand-guidelines/SKILL.md) | Documentation | 檢查內容是否符合品牌語氣與規範 |
| [Internal Comms](./skills/documentation/internal-comms/SKILL.md) | Documentation | 撰寫公司內部公告或信件 |
| [Slack GIF Creator](./skills/custom/slack-gif-creator/SKILL.md) | Custom | 自動生成適合 Slack 溝通的 GIF 動畫 |
| [人工測試腳本](./skills/testing/manual-test-script/SKILL.md) | Testing | 撰寫標準化的人工測試案例，適合 QA/PM/業務執行 |
| [QA Regression](./skills/testing/qa-regression/SKILL.md) | Testing | 建立標準化的 QA 回歸測試架構 |
| [Brainstorming](./skills/collaboration/brainstorming/SKILL.md) | Collaboration | 透過對話引導，將模糊想法轉化為具體架構 |
| [Ask Questions](./skills/productivity/ask-questions-if-underspecified/SKILL.md) | Productivity | 當需求不清楚時，主動向您提問確認 |
| [Code Documentation](./skills/productivity/code-documentation/SKILL.md) | Productivity | 為程式碼撰寫標準化的文件與註解 |
| [Product Marketing Context](./skills/marketing/strategy/product-marketing-context/SKILL.md) | Marketing | 產品行銷基礎文件建立 |

### 🟡 Intermediate（中級）
需要一定的背景知識與經驗

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [撰寫產品需求文件 (PRD)](./skills/documentation/write-prd/SKILL.md) | Documentation | 撰寫結構完整的商業導向 PRD |
| [撰寫規格文件](./skills/documentation/write-specification/SKILL.md) | Documentation | 以 PM 角度撰寫清楚的功能規格書 |
| [Frontend Design](./skills/web-development/frontend-design/SKILL.md) | Web Development | 開發互動式網頁前端介面 |
| [Theme Factory](./skills/web-development/theme-factory/SKILL.md) | Web Development | 建立一致的網頁色彩、字體與視覺規範 |
| [UI/UX Pro Max](./skills/web-development/ui-ux-pro-max/SKILL.md) | Web Development | 設計儀表板、SaaS 或電商的現代化介面 |
| [DOCX](./skills/documentation/docx/SKILL.md) | Documentation | 生成合約、報告等 Word 文件 |
| [PDF](./skills/documentation/pdf/SKILL.md) | Documentation | 生成正式 PDF 文件或報表 |
| [PPTX](./skills/documentation/pptx/SKILL.md) | Documentation | 生成提案或報告用的 PowerPoint 簡報 |
| [XLSX](./skills/documentation/xlsx/SKILL.md) | Documentation | 生成數據分析或報表用的 Excel 試算表 |
| [Doc Coauthoring](./skills/documentation/doc-coauthoring/SKILL.md) | Documentation | 與您協作編輯同一份文件 |
| [Webapp Testing](./skills/testing/webapp-testing/SKILL.md) | Testing | 使用 Playwright 自動化測試網頁 |
| [Skill Creator](./skills/custom/skill-creator/SKILL.md) | Custom | 創建新的 SKILL.md 讓 AI 學會新能力 |
| [Web Artifacts Builder](./skills/custom/web-artifacts-builder/SKILL.md) | Custom | 建立與管理互動式網頁元件 |
| [HuggingFace CLI](./skills/ai-ml-tools/hugging-face-cli/SKILL.md) | AI/ML Tools | 下載/上傳 AI 模型與資料集 |
| [GA4](./skills/analytics/ga4/SKILL.md) | Analytics | 查詢 Google Analytics 4 數據 |
| [GSC](./skills/analytics/gsc/SKILL.md) | Analytics | 查詢 Google Search Console SEO 數據 |
| [GA4 Implementation](./skills/analytics/ga4-implementation/SKILL.md) | Analytics | GA4 追蹤實作指南 |
| [GTM](./skills/analytics/gtm/SKILL.md) | Analytics | Google Tag Manager 容器設定 |
| [Marketing Campaigns](./skills/marketing/marketing-campaigns/SKILL.md) | Marketing | 行銷活動規劃、UTM、SEO/GEO |
| [Page CRO](./skills/marketing/cro/page-cro/SKILL.md) | Marketing | 落地頁轉換率優化 |
| [Signup Flow CRO](./skills/marketing/cro/signup-flow-cro/SKILL.md) | Marketing | 註冊流程優化 |
| [Onboarding CRO](./skills/marketing/cro/onboarding-cro/SKILL.md) | Marketing | 用戶引導優化 |
| [Form CRO](./skills/marketing/cro/form-cro/SKILL.md) | Marketing | 表單優化 |
| [Popup CRO](./skills/marketing/cro/popup-cro/SKILL.md) | Marketing | 彈窗轉換優化 |
| [Paywall Upgrade CRO](./skills/marketing/cro/paywall-upgrade-cro/SKILL.md) | Marketing | 付費牆優化 |
| [Copywriting](./skills/marketing/copywriting/copywriting/SKILL.md) | Marketing | 行銷文案撰寫 |
| [Copy Editing](./skills/marketing/copywriting/copy-editing/SKILL.md) | Marketing | 文案編輯 |
| [Email Sequence](./skills/marketing/copywriting/email-sequence/SKILL.md) | Marketing | Email 序列設計 |
| [Social Content](./skills/marketing/copywriting/social-content/SKILL.md) | Marketing | 社群內容策略 |
| [Content Strategy](./skills/marketing/copywriting/content-strategy/SKILL.md) | Marketing | 內容策略規劃 |
| [SEO Audit](./skills/marketing/seo/seo-audit/SKILL.md) | Marketing | SEO 審核 |
| [Schema Markup](./skills/marketing/seo/schema-markup/SKILL.md) | Marketing | 結構化數據 |
| [Competitor Alternatives](./skills/marketing/seo/competitor-alternatives/SKILL.md) | Marketing | 競爭對手比較頁 |
| [Analytics Tracking](./skills/marketing/testing/analytics-tracking/SKILL.md) | Marketing | 數據追蹤設定 |
| [A/B Test Setup](./skills/marketing/testing/ab-test-setup/SKILL.md) | Marketing | A/B 測試 |
| [Free Tool Strategy](./skills/marketing/growth/free-tool-strategy/SKILL.md) | Marketing | 免費工具策略 |
| [Referral Program](./skills/marketing/growth/referral-program/SKILL.md) | Marketing | 推薦計畫設計 |
| [Paid Ads](./skills/marketing/growth/paid-ads/SKILL.md) | Marketing | 付費廣告策略 |
| [Marketing Ideas](./skills/marketing/strategy/marketing-ideas/SKILL.md) | Marketing | 行銷策略點子庫 |
| [Marketing Psychology](./skills/marketing/strategy/marketing-psychology/SKILL.md) | Marketing | 行銷心理學 |
| [Pricing Strategy](./skills/marketing/strategy/pricing-strategy/SKILL.md) | Marketing | 定價策略 |
| [Launch Strategy](./skills/marketing/strategy/launch-strategy/SKILL.md) | Marketing | 產品發布策略 |
| [Create Plan](./skills/productivity/create-plan/SKILL.md) | Productivity | 將複雜需求拆解為可執行的步驟清單 |
| [Fix failing CI](./skills/devops/gh-fix-ci/SKILL.md) | DevOps | 自動分析並修復 GitHub CI 錯誤 |
| [Address PR comments](./skills/devops/gh-address-comments/SKILL.md) | DevOps | 快速處理 GitHub PR 的審查意見 |
| [Code Debugging Analysis](./skills/debugging/code-debugging-analysis/SKILL.md) | Debugging | 使用系統化方法分析並解決程式錯誤 |
| [鉛獲取策略師](./skills/strategy/100m-leads-strategist/SKILL.md) | Strategy | 運用《$100M Leads》框架倍增潛在客戶獲取量 |
| [大滿貫要約策略師](./skills/strategy/grand-slam-offer-strategist/SKILL.md) | Strategy | 運用《$100M Offers》框架設計高轉換率的產品報價策略 |
| [峰值體驗策略顧問](./skills/strategy/peak-experience-consultant/SKILL.md) | Strategy | 運用 MOT 理論分析品牌體驗，結合外部資料提供策略建議 |

### 🔴 Advanced（進階）
適合有豐富經驗的使用者

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Canvas Design](./skills/web-development/canvas-design/SKILL.md) | Web Development | 使用程式碼創作高品質視覺藝術的海報或圖表 |
| [Algorithmic Art](./skills/custom/algorithmic-art/SKILL.md) | Custom | 使用程式碼繪製幾何圖形與動態視覺 |
| [MCP Builder](./skills/custom/mcp-builder/SKILL.md) | Custom | 將現有 API 包裝成 AI 可用的 MCP 工具 |
| [Database Design](./skills/development/database-design/SKILL.md) | Database | 設計正規化的資料庫與優化查詢效能 |
| [TDD](./skills/testing/test-driven-development/SKILL.md) | Testing | 先寫測試再寫程式，確保程式碼邏輯正確 |
| [Systematic Debugging](./skills/debugging/systematic-debugging/SKILL.md) | Debugging | 透過四階段分析找出 Bug 的根本原因 |
| [Google Ads](./skills/analytics/google-ads/SKILL.md) | Analytics | 查詢與優化 Google Ads 廣告活動 |
| [Google Ads Scripts](./skills/analytics/google-ads-scripts/SKILL.md) | Analytics | Google Ads 自動化腳本開發 |
| [Programmatic SEO](./skills/marketing/seo/programmatic-seo/SKILL.md) | Marketing | 規模化 SEO 頁面建立 |
| [逆向工程分析師](./skills/strategy/reverse-engineering-analyst/SKILL.md) | Strategy | 系統性分析未知程式碼與系統，將黑盒子轉化為技術文件 |

---

## 按來源索引

### Anthropic 官方
來自 Anthropic 官方提供的 skills

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Canvas Design](./skills/web-development/canvas-design/SKILL.md) | Web Development | 使用程式碼創作高品質視覺藝術的海報或圖表 |
| [Frontend Design](./skills/web-development/frontend-design/SKILL.md) | Web Development | 開發互動式網頁前端介面 |
| [Theme Factory](./skills/web-development/theme-factory/SKILL.md) | Web Development | 建立一致的網頁色彩、字體與視覺規範 |
| [DOCX](./skills/documentation/docx/SKILL.md) | Documentation | 生成合約、報告等 Word 文件 |
| [PDF](./skills/documentation/pdf/SKILL.md) | Documentation | 生成正式 PDF 文件或報表 |
| [PPTX](./skills/documentation/pptx/SKILL.md) | Documentation | 生成提案或報告用的 PowerPoint 簡報 |
| [XLSX](./skills/documentation/xlsx/SKILL.md) | Documentation | 生成數據分析或報表用的 Excel 試算表 |
| [Brand Guidelines](./skills/documentation/brand-guidelines/SKILL.md) | Documentation | 檢查內容是否符合品牌語氣與規範 |
| [Doc Coauthoring](./skills/documentation/doc-coauthoring/SKILL.md) | Documentation | 與您協作編輯同一份文件 |
| [Internal Comms](./skills/documentation/internal-comms/SKILL.md) | Documentation | 撰寫公司內部公告或信件 |
| [Webapp Testing](./skills/testing/webapp-testing/SKILL.md) | Testing | 使用 Playwright 自動化測試網頁 |
| [Algorithmic Art](./skills/custom/algorithmic-art/SKILL.md) | Custom | 使用程式碼繪製幾何圖形與動態視覺 |
| [MCP Builder](./skills/custom/mcp-builder/SKILL.md) | Custom | 將現有 API 包裝成 AI 可用的 MCP 工具 |
| [Skill Creator](./skills/custom/skill-creator/SKILL.md) | Custom | 創建新的 SKILL.md 讓 AI 學會新能力 |
| [Web Artifacts Builder](./skills/custom/web-artifacts-builder/SKILL.md) | Custom | 建立與管理互動式網頁元件 |
| [Slack GIF Creator](./skills/custom/slack-gif-creator/SKILL.md) | Custom | 自動生成適合 Slack 溝通的 GIF 動畫 |

### OpenAI 官方
來自 OpenAI 官方提供的 skills

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Create Plan](./skills/productivity/create-plan/SKILL.md) | Productivity | 將複雜需求拆解為可執行的步驟清單 |
| [Fix failing CI](./skills/devops/gh-fix-ci/SKILL.md) | DevOps | 自動分析並修復 GitHub CI 錯誤 |
| [Address PR comments](./skills/devops/gh-address-comments/SKILL.md) | DevOps | 快速處理 GitHub PR 的審查意見 |

### Skill Creator AI
來自 SkillCreatorAI 開源倉庫

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Database Design](./skills/development/database-design/SKILL.md) | Database | 設計正規化的資料庫與優化查詢效能 |
| [Ask Questions](./skills/productivity/ask-questions-if-underspecified/SKILL.md) | Productivity | 當需求不清楚時，主動向您提問確認 |
| [Code Documentation](./skills/productivity/code-documentation/SKILL.md) | Productivity | 為程式碼撰寫標準化的文件與註解 |
| [QA Regression](./skills/testing/qa-regression/SKILL.md) | Testing | 建立標準化的 QA 回歸測試架構 |

### Obra Superpowers
來自 obra/superpowers 倉庫 (via Awesome Claude Skills)

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Systematic Debugging](./skills/debugging/systematic-debugging/SKILL.md) | Debugging | 透過四階段分析找出 Bug 的根本原因 |
| [TDD](./skills/testing/test-driven-development/SKILL.md) | Testing | 先寫測試再寫程式，確保程式碼邏輯正確 |
| [Brainstorming](./skills/collaboration/brainstorming/SKILL.md) | Collaboration | 透過對話引導，將模糊想法轉化為具體架構 |

### 自定義 (Custom)
使用者自行創建的 skills

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [建立美觀落地頁](./skills/web-development/create-landing-page/SKILL.md) | Web Development | 快速建立專業級的響應式落地頁 |
| [撰寫產品需求文件 (PRD)](./skills/documentation/write-prd/SKILL.md) | Documentation | 撰寫結構完整的商業導向 PRD |
| [撰寫規格文件](./skills/documentation/write-specification/SKILL.md) | Documentation | 以 PM 角度撰寫清楚的功能規格書 |
| [人工測試腳本](./skills/testing/manual-test-script/SKILL.md) | Testing | 撰寫標準化的人工測試案例，適合 QA/PM/業務執行 |
| [鉛獲取策略師](./skills/strategy/100m-leads-strategist/SKILL.md) | Strategy | 運用《$100M Leads》框架倍增潛在客戶獲取量 |
| [大滿貫要約策略師](./skills/strategy/grand-slam-offer-strategist/SKILL.md) | Strategy | 運用《$100M Offers》框架設計高轉換率的產品報價策略 |
| [峰值體驗策略顧問](./skills/strategy/peak-experience-consultant/SKILL.md) | Strategy | 運用 MOT 理論分析品牌體驗，結合外部資料提供策略建議 |
| [逆向工程分析師](./skills/strategy/reverse-engineering-analyst/SKILL.md) | Strategy | 系統性分析未知程式碼與系統，將黑盒子轉化為技術文件 |

### 其他來源
從其他社群或專案收集的 skills

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [UI/UX Pro Max](./skills/web-development/ui-ux-pro-max/SKILL.md) | Web Development | 設計儀表板、SaaS 或電商的現代化介面 |
| [Code Debugging Analysis](./skills/debugging/code-debugging-analysis/SKILL.md) | Debugging | 使用系統化方法分析並解決程式錯誤 |

### HuggingFace 官方
來自 HuggingFace 官方提供的 skills

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [HuggingFace CLI](./skills/ai-ml-tools/hugging-face-cli/SKILL.md) | AI/ML Tools | 下載/上傳 AI 模型與資料集 |

### jdrhyne/agent-skills
來自 jdrhyne/agent-skills 社群倉庫的 skills

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [GA4](./skills/analytics/ga4/SKILL.md) | Analytics | 查詢 Google Analytics 4 數據（頁面、流量、轉換） |
| [GSC](./skills/analytics/gsc/SKILL.md) | Analytics | 查詢 Google Search Console SEO 數據 |
| [Google Ads](./skills/analytics/google-ads/SKILL.md) | Analytics | 查詢與優化 Google Ads 廣告活動 |

### wookstar-claude-plugins
來自 wookstar-claude-plugins 社群倉庫的 marketing toolkit

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [GA4 Implementation](./skills/analytics/ga4-implementation/SKILL.md) | Analytics | GA4 追蹤實作指南（15 份參考文件） |
| [GTM](./skills/analytics/gtm/SKILL.md) | Analytics | Google Tag Manager 完整指南（9 份參考文件） |
| [Google Ads Scripts](./skills/analytics/google-ads-scripts/SKILL.md) | Analytics | Google Ads 自動化腳本開發 |

### SpillwaveSolutions
來自 SpillwaveSolutions 的行銷活動執行技能

| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Marketing Campaigns](./skills/marketing/marketing-campaigns/SKILL.md) | Marketing | 行銷活動規劃、UTM 管理、SEO/GEO 優化（9 份參考文件 + 2 個 Python 工具） |

### coreyhaines31/marketingskills
來自 coreyhaines31/marketingskills 的完整行銷技能庫（25 個技能）

#### CRO（轉換率優化）
| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Page CRO](./skills/marketing/cro/page-cro/SKILL.md) | Marketing | 落地頁/首頁轉換率優化 |
| [Signup Flow CRO](./skills/marketing/cro/signup-flow-cro/SKILL.md) | Marketing | 註冊流程優化與流失率降低 |
| [Onboarding CRO](./skills/marketing/cro/onboarding-cro/SKILL.md) | Marketing | 用戶引導與啟用率優化 |
| [Form CRO](./skills/marketing/cro/form-cro/SKILL.md) | Marketing | 表單優化與完成率提升 |
| [Popup CRO](./skills/marketing/cro/popup-cro/SKILL.md) | Marketing | 彈窗/模態視窗轉換優化 |
| [Paywall Upgrade CRO](./skills/marketing/cro/paywall-upgrade-cro/SKILL.md) | Marketing | 付費牆與升級畫面優化 |

#### 文案與內容
| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Copywriting](./skills/marketing/copywriting/copywriting/SKILL.md) | Marketing | 行銷文案撰寫（首頁、落地頁、定價頁） |
| [Copy Editing](./skills/marketing/copywriting/copy-editing/SKILL.md) | Marketing | 行銷文案編輯與潤飾（七遍編輯法） |
| [Email Sequence](./skills/marketing/copywriting/email-sequence/SKILL.md) | Marketing | Email 行銷序列設計（歡迎、培養、喚回） |
| [Social Content](./skills/marketing/copywriting/social-content/SKILL.md) | Marketing | 社群媒體內容策略與撰寫 |
| [Content Strategy](./skills/marketing/copywriting/content-strategy/SKILL.md) | Marketing | 內容策略規劃（可搜尋 vs 可分享） |

#### SEO
| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [SEO Audit](./skills/marketing/seo/seo-audit/SKILL.md) | Marketing | 網站 SEO 審核與診斷 |
| [Programmatic SEO](./skills/marketing/seo/programmatic-seo/SKILL.md) | Marketing | 規模化 SEO 頁面建立（12 個 Playbook） |
| [Schema Markup](./skills/marketing/seo/schema-markup/SKILL.md) | Marketing | 結構化數據/Rich Snippets 實作 |
| [Competitor Alternatives](./skills/marketing/seo/competitor-alternatives/SKILL.md) | Marketing | 競爭對手比較頁與替代方案頁 |

#### 測試與追蹤
| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Analytics Tracking](./skills/marketing/testing/analytics-tracking/SKILL.md) | Marketing | 數據追蹤設定（GA4、GTM、UTM） |
| [A/B Test Setup](./skills/marketing/testing/ab-test-setup/SKILL.md) | Marketing | A/B 測試規劃與執行 |

#### 成長
| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Free Tool Strategy](./skills/marketing/growth/free-tool-strategy/SKILL.md) | Marketing | 免費工具行銷策略（工程行銷） |
| [Referral Program](./skills/marketing/growth/referral-program/SKILL.md) | Marketing | 推薦計畫與聯盟計畫設計 |
| [Paid Ads](./skills/marketing/growth/paid-ads/SKILL.md) | Marketing | 付費廣告策略（Google、Meta、LinkedIn） |

#### 策略
| Skill 名稱 | 類別 | 簡述 |
|-----------|------|------|
| [Marketing Ideas](./skills/marketing/strategy/marketing-ideas/SKILL.md) | Marketing | 139 個 SaaS 行銷策略點子庫 |
| [Marketing Psychology](./skills/marketing/strategy/marketing-psychology/SKILL.md) | Marketing | 行銷心理學與說服原則 |
| [Pricing Strategy](./skills/marketing/strategy/pricing-strategy/SKILL.md) | Marketing | SaaS 定價策略與方案設計 |
| [Launch Strategy](./skills/marketing/strategy/launch-strategy/SKILL.md) | Marketing | 產品發布與 Product Hunt 策略 |
| [Product Marketing Context](./skills/marketing/strategy/product-marketing-context/SKILL.md) | Marketing | 產品行銷基礎文件建立 |

---

**維護說明**：當新增 skill 時，請同步更新本索引檔案的所有相關章節。建議使用自動化腳本來維護索引（未來可開發）。

**最後更新**：2026-01-30
**Skills 總數**：64 個（3 個自創 + 16 個 Anthropic 官方 + 3 個 OpenAI 官方 + 4 個 Skill Creator AI + 3 個 Obra Superpowers + 1 個 HuggingFace 官方 + 3 個 jdrhyne/agent-skills + 3 個 wookstar + 1 個 SpillwaveSolutions + 25 個 coreyhaines31/marketingskills + 2 個社群）
