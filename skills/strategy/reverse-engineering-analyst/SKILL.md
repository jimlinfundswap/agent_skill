---
name: "逆向工程分析師 (Reverse Engineering Analyst)"
category: "strategy"
source: "Custom"
version: "1.0.0"
author: "Agent Skills Team"
tags:
  - reverse-engineering
  - code-analysis
  - system-analysis
  - architecture
  - legacy-systems
scenarios:
  - "需要理解未知系統或程式碼的運作方式"
  - "分析第三方 API 或 SDK 的行為"
  - "解析 Legacy 系統以便現代化重構"
  - "研究競品或開源專案的實作細節"
  - "建立系統的知識文件或架構圖"
difficulty: "advanced"
updated: "2026-01-29"
---

# 逆向工程分析師 (Reverse Engineering Analyst)

這個 skill 幫助您**系統性地分析與理解**未知的程式碼、系統或 API，將「黑盒子」轉化為清晰的技術文件與架構理解。

## 概述

本 skill 基於以下原則：
- **由外而內**：從可觀察的行為開始，逐步深入內部實作
- **假設驅動**：建立假設、設計驗證、迭代修正
- **結構化記錄**：將發現系統性地整理成文件
- **安全優先**：僅用於合法授權的分析場景

## 適用情境

- 🔍 **Legacy 系統分析**：接手維護舊系統，需要理解其運作方式

- 🔍 **第三方整合**：整合外部 API 但文件不足，需要實際測試理解行為

- 🔍 **開源專案研究**：學習優秀專案的架構與實作技巧

- 🔍 **重構前準備**：在重構前完整理解現有系統的邏輯與依賴

- 🔍 **問題診斷**：追蹤難以重現的 bug 或效能問題

---

## 分析框架

### 五層分析模型

```
┌─────────────────────────────────────────┐
│  Layer 1: 外部行為 (Observable Behavior) │
├─────────────────────────────────────────┤
│  Layer 2: 介面契約 (Interface Contract)  │
├─────────────────────────────────────────┤
│  Layer 3: 資料流向 (Data Flow)           │
├─────────────────────────────────────────┤
│  Layer 4: 控制流程 (Control Flow)        │
├─────────────────────────────────────────┤
│  Layer 5: 核心邏輯 (Core Logic)          │
└─────────────────────────────────────────┘
```

| Layer | 分析目標 | 主要方法 |
|-------|----------|----------|
| **Layer 1** | 系統做什麼？ | 黑盒測試、觀察輸入輸出 |
| **Layer 2** | 如何與系統互動？ | API 分析、參數探測 |
| **Layer 3** | 資料如何流動？ | 追蹤資料轉換與傳遞 |
| **Layer 4** | 程式如何執行？ | 流程圖、狀態機分析 |
| **Layer 5** | 核心演算法是什麼？ | 深度程式碼分析 |

---

## 分析流程

### Phase 1: 偵察 (Reconnaissance)

**目標**：收集基本資訊，建立初步認知

#### 1.1 收集外部資訊

```markdown
## 偵察清單

### 文件資源
- [ ] 官方文件 / README
- [ ] API 文件 / OpenAPI spec
- [ ] 註解與 JSDoc / DocString
- [ ] 相關的 Issue / PR / 討論

### 程式碼結構
- [ ] 目錄結構概覽
- [ ] 進入點 (Entry points)
- [ ] 設定檔 (Config files)
- [ ] 依賴套件 (Dependencies)

### 執行環境
- [ ] 環境變數
- [ ] 啟動參數
- [ ] 執行時期依賴
```

#### 1.2 建立初始心智模型

```markdown
## 初始理解

### 系統目的
{一句話描述這個系統做什麼}

### 主要元件
1. {元件 A} - {用途}
2. {元件 B} - {用途}
3. {元件 C} - {用途}

### 技術堆疊
- 語言：{語言}
- 框架：{框架}
- 資料庫：{資料庫}
- 其他：{其他關鍵技術}

### 初步假設
1. {假設 1}
2. {假設 2}
3. {假設 3}
```

---

### Phase 2: 行為分析 (Behavioral Analysis)

**目標**：透過觀察系統行為，理解「系統做什麼」

#### 2.1 輸入輸出映射

```markdown
## 行為觀察記錄

### 測試案例 #{編號}

**輸入**：
```
{具體輸入內容}
```

**輸出**：
```
{觀察到的輸出}
```

**觀察**：
- {觀察 1}
- {觀察 2}

**推論**：
{根據觀察得出的推論}
```

#### 2.2 邊界探測

| 測試類型 | 輸入 | 預期 | 實際 | 發現 |
|----------|------|------|------|------|
| 正常值 | {input} | {expected} | {actual} | {finding} |
| 空值 | null/empty | ? | {actual} | {finding} |
| 邊界值 | max/min | ? | {actual} | {finding} |
| 異常值 | invalid | error? | {actual} | {finding} |

---

### Phase 3: 靜態分析 (Static Analysis)

**目標**：透過閱讀程式碼，理解「系統如何運作」

#### 3.1 進入點分析

```markdown
## 進入點分析

### 主要進入點
- **檔案**：{file_path}
- **函數**：{function_name}
- **觸發方式**：{HTTP request / CLI command / Event / etc.}

### 呼叫鏈
```
{entry_function}
  └─> {called_function_1}
      └─> {called_function_2}
          └─> {called_function_3}
```

### 關鍵檔案
| 檔案 | 職責 | 重要性 |
|------|------|--------|
| {file1} | {responsibility} | ⭐⭐⭐ |
| {file2} | {responsibility} | ⭐⭐ |
| {file3} | {responsibility} | ⭐ |
```

#### 3.2 資料流追蹤

```markdown
## 資料流分析

### 資料結構
```typescript
// 主要資料型別
interface MainEntity {
  id: string;
  // ...其他欄位
}
```

### 資料流向圖
```
[輸入] → [驗證] → [轉換] → [處理] → [儲存] → [輸出]
   ↓         ↓         ↓         ↓         ↓
{具體}    {具體}    {具體}    {具體}    {具體}
```

### 狀態變化
| 階段 | 資料狀態 | 變化說明 |
|------|----------|----------|
| 輸入 | raw input | 原始使用者輸入 |
| 驗證後 | validated | 通過驗證的資料 |
| 轉換後 | transformed | 轉換為內部格式 |
| 處理後 | processed | 業務邏輯處理完成 |
| 儲存後 | persisted | 已寫入資料庫 |
```

---

### Phase 4: 動態分析 (Dynamic Analysis)

**目標**：透過執行時期觀察，驗證與補充靜態分析

#### 4.1 除錯追蹤

```markdown
## 除錯記錄

### Session #{編號}

**目標**：{本次除錯要驗證的假設}

**設置的斷點**：
1. {file}:{line} - {原因}
2. {file}:{line} - {原因}

**觀察結果**：
| 斷點 | 變數狀態 | 觀察 |
|------|----------|------|
| #1 | `x = {value}` | {observation} |
| #2 | `y = {value}` | {observation} |

**結論**：
{驗證結果與新發現}
```

#### 4.2 效能剖析

```markdown
## 效能分析

### 熱點函數 (Hot Spots)
| 函數 | 呼叫次數 | 總時間 | 平均時間 |
|------|----------|--------|----------|
| {func1} | {count} | {total}ms | {avg}ms |
| {func2} | {count} | {total}ms | {avg}ms |

### 記憶體使用
- 峰值使用量：{peak} MB
- 主要配置來源：{source}
- 潛在洩漏點：{leak_point}
```

---

### Phase 5: 知識整合 (Knowledge Synthesis)

**目標**：將分析結果整合成可用的知識文件

#### 5.1 架構文件

```markdown
# {系統名稱} 架構文件

## 概述
{系統整體描述}

## 架構圖
```
[Component Diagram]
```

## 核心元件

### {元件名稱}
- **職責**：{responsibility}
- **位置**：{file_path}
- **介面**：{interface}
- **依賴**：{dependencies}

## 資料模型
{ERD 或資料結構說明}

## 關鍵流程
{主要業務流程的序列圖}

## 設計決策
| 決策 | 原因 | 影響 |
|------|------|------|
| {decision} | {rationale} | {impact} |
```

#### 5.2 API 文件

```markdown
# API 參考文件

## Endpoint: {name}

### 基本資訊
- **路徑**：`{path}`
- **方法**：`{method}`
- **認證**：{auth_method}

### 請求
```json
{request_example}
```

### 回應
```json
{response_example}
```

### 錯誤碼
| 狀態碼 | 說明 | 處理建議 |
|--------|------|----------|
| 400 | {desc} | {suggestion} |
| 404 | {desc} | {suggestion} |
| 500 | {desc} | {suggestion} |
```

---

## 分析工具箱

### 程式碼分析工具

| 用途 | 工具 | 說明 |
|------|------|------|
| 依賴分析 | `madge`, `dependency-cruiser` | 視覺化模組依賴 |
| 程式碼搜尋 | `ripgrep`, `ast-grep` | 快速搜尋程式碼模式 |
| 靜態分析 | `ESLint`, `SonarQube` | 程式碼品質與潛在問題 |
| 型別分析 | `TypeScript`, `Pyright` | 型別推論與檢查 |

### 執行時期分析工具

| 用途 | 工具 | 說明 |
|------|------|------|
| 網路攔截 | `Fiddler`, `Charles`, `mitmproxy` | 觀察 HTTP 流量 |
| 除錯器 | `Chrome DevTools`, `VS Code Debugger` | 斷點除錯 |
| 效能剖析 | `Chrome Performance`, `py-spy` | 效能瓶頸分析 |
| 記憶體分析 | `Chrome Memory`, `memory_profiler` | 記憶體使用分析 |

### 文件產生工具

| 用途 | 工具 | 說明 |
|------|------|------|
| 架構圖 | `Mermaid`, `PlantUML` | 程式碼轉圖表 |
| API 文件 | `Swagger`, `Redoc` | OpenAPI 文件 |
| 程式碼文件 | `TypeDoc`, `Sphinx` | 自動產生文件 |

---

## 常見模式識別

### 架構模式

| 模式 | 特徵 | 常見於 |
|------|------|--------|
| **MVC** | Controller, Model, View 分離 | Web 框架 |
| **Repository** | 資料存取抽象層 | 資料庫操作 |
| **Service Layer** | 業務邏輯集中 | 企業應用 |
| **Event-Driven** | 事件發布/訂閱 | 非同步系統 |
| **Plugin** | 可擴充的架構 | 工具軟體 |

### 程式碼氣味

| 氣味 | 症狀 | 可能原因 |
|------|------|----------|
| **God Class** | 單一類別過大 | 職責不清 |
| **Spaghetti Code** | 控制流混亂 | 缺乏設計 |
| **Copy-Paste** | 重複程式碼 | 缺乏抽象 |
| **Magic Numbers** | 硬編碼數值 | 缺乏常數定義 |
| **Dead Code** | 未使用的程式碼 | 重構不完整 |

---

## 分析報告模板

```markdown
# {專案名稱} 逆向工程分析報告

## 摘要
- **分析日期**：{date}
- **分析對象**：{target}
- **分析範圍**：{scope}
- **分析深度**：{depth: 淺/中/深}

## 關鍵發現

### 發現 1：{標題}
- **描述**：{description}
- **影響**：{impact}
- **建議**：{recommendation}

### 發現 2：{標題}
...

## 架構概覽
{architecture_diagram}

## 核心流程
{sequence_diagrams}

## 技術債務
| 項目 | 嚴重程度 | 建議處理方式 |
|------|----------|--------------|
| {item} | {severity} | {action} |

## 後續建議
1. {recommendation_1}
2. {recommendation_2}
3. {recommendation_3}

## 附錄
- 完整呼叫圖
- 資料結構定義
- API 端點列表
```

---

## 最佳實踐

### Do's ✅

1. **從高層開始**：先理解整體架構，再深入細節
2. **建立假設**：每次分析都帶著要驗證的假設
3. **持續記錄**：邊分析邊記錄，避免重複工作
4. **交叉驗證**：用多種方法驗證同一個結論
5. **保持懷疑**：程式碼可能有 bug，文件可能過時

### Don'ts ❌

1. **不要一開始就深入細節**：容易迷失在程式碼中
2. **不要只看程式碼**：結合執行觀察更有效
3. **不要忽略測試程式碼**：測試常透露預期行為
4. **不要假設程式碼完美**：Legacy 系統常有歷史問題
5. **不要跳過邊界情況**：bug 常藏在邊界處理

---

## 倫理與法律注意事項

⚠️ **重要提醒**：

1. **授權確認**：確保您有權限分析目標系統
2. **保密義務**：遵守 NDA 與保密協議
3. **智慧財產**：尊重著作權與專利
4. **合法用途**：僅用於合法的分析目的

**適當場景**：
- 維護自己公司的 Legacy 系統
- 分析開源專案
- 授權的安全測試
- 學術研究

**不適當場景**：
- 未授權的商業機密竊取
- 繞過軟體保護機制
- 惡意程式分析後的利用

---

## 相關 Skills

- [撰寫規格文件](../../documentation/write-specification/SKILL.md) - 將分析結果轉為正式規格
- [Peak Experience Consultant](../peak-experience-consultant/SKILL.md) - 深度訪談收集需求
- [系統化除錯](../../debugging/systematic-debugging/SKILL.md) - 問題診斷技巧

---

**版本歷史**：
- v1.0.0 (2026-01-29)：初始版本

**維護者**：Agent Skills Team
**最後更新**：2026-01-29
