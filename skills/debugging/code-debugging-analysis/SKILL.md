---
name: code-debugging-analysis
description: 完整的程式碼除錯分析流程。透過系統化方法進行錯誤分析、預測可能原因、仔細檢查程式碼、識別問題、逐步推理並提供詳細的除錯指示。適用於各種程式語言與框架的錯誤診斷。
version: 1.0.0
author: Other
tags:
  - debugging
  - error-analysis
  - troubleshooting
  - code-review
  - problem-solving
scenarios:
  - "遇到程式錯誤需要系統化分析"
  - "需要識別並修復程式碼問題"
  - "需要提供詳細的除錯指南"
  - "需要了解錯誤的根本原因"
difficulty: advanced
updated: 2026-01-18
---

# 程式碼除錯分析 - 系統化方法論

這是一套完整的程式碼除錯分析流程，透過結構化的方法幫助開發者識別、分析並解決程式錯誤。

## 概述

本 skill 提供一個系統化的除錯框架，包含：
- ✅ **錯誤分析**：全面檢視錯誤訊息與相關程式碼
- ✅ **預測生成**：提出多個可能的錯誤原因
- ✅ **程式碼審查**：仔細檢查相關程式碼片段
- ✅ **問題識別**：精確定位問題程式碼
- ✅ **逐步推理**：記錄完整的思考過程
- ✅ **詳細解釋**：說明根本原因
- ✅ **除錯指示**：提供可執行的修復步驟

## 適用情境

- 🎯 **執行時錯誤 (Runtime Errors)**：程式執行時發生的錯誤
  
- 🎯 **語法錯誤 (Syntax Errors)**：程式碼語法問題

- 🎯 **邏輯錯誤 (Logic Errors)**：程式邏輯錯誤導致的異常行為

- 🎯 **整合問題 (Integration Issues)**：多個元件互動時的問題

- 🎯 **相依性問題 (Dependency Issues)**：套件或函式庫相關問題

## 除錯流程

### 階段 1：錯誤分析

**收集資訊**：
1. **錯誤訊息 (ERROR)**：完整的錯誤堆疊追蹤
2. **使用者任務 (USER_TASK)**：錯誤發生時的操作
3. **專案程式碼 (ATTACHED_PROJECT_CODE)**：相關的程式碼檔案
4. **應用場景 (APP_USE_CASE)**：應用程式的用途與架構

**初步評估**：
- 閱讀錯誤訊息，識別錯誤類型
- 了解錯誤發生的上下文
- 確認錯誤發生的時機與條件

### 階段 2：預測可能原因

基於錯誤分析，生成 **5 個有根據的預測**：

```xml
<predictions>
1. [預測 1：具體的可能原因]
2. [預測 2：具體的可能原因]
3. [預測 3：具體的可能原因]
4. [預測 4：具體的可能原因]
5. [預測 5：具體的可能原因]
</predictions>
```

**預測考量面向**：
- 程式碼錯誤（語法、邏輯）
- 相依性問題（版本衝突、缺少套件）
- 資源限制（記憶體、權限）
- 環境問題（設定、路徑）
- 非同步處理（競態條件、回呼問題）

### 階段 3：程式碼審查

**系統化檢查**：

使用 `<scratchpad>` 記錄審查過程：

```xml
<scratchpad>
1. 檢查預測 1：
   - 查看相關程式碼片段
   - 驗證或否定預測
   - 理由：...

2. 檢查預測 2：
   - 查看相關程式碼片段
   - 驗證或否定預測
   - 理由：...

[繼續其他預測的檢查...]

結論：
- 保留預測：[X, Y]
- 排除預測：[Z]（原因：...）
</scratchpad>
```

**審查重點**：
- 最近的程式碼變更
- 相關函式的實作
- 資料流程與狀態管理
- 錯誤處理機制
- API 呼叫與回應處理

### 階段 4：問題程式碼識別

精確定位問題程式碼：

```xml
<problematic_code>
[檔案名稱：function_name]

[具體的問題程式碼片段]
</problematic_code>
```

**識別要點**：
- 標示具體的檔案與行數
- 突顯關鍵的問題區域
- 說明為何這段程式碼有問題

### 階段 5：逐步推理

記錄完整的思考邏輯：

```xml
<step_by_step_reasoning>
1. [初步觀察]
   - 錯誤發生在...
   - 這表示...

2. [深入分析]
   - 檢查 X 發現...
   - 這與 Y 的行為不符...

3. [關聯性推導]
   - X 和 Y 的互動導致...
   - 根本原因可能是...

4. [解決方案思考]
   - 可能的修復方式有...
   - 最佳方案是...因為...

[繼續詳細推理...]
</step_by_step_reasoning>
```

### 階段 6：詳細解釋

提供根本原因的完整說明：

```xml
<explanation>
根本原因是 [具體原因]。

[詳細解釋]：
- 為什麼會發生這個問題
- 問題程式碼的運作方式
- 錯誤如何表現出來
- 在應用程式中的影響

[技術細節]：
- 相關的技術概念
- 框架或函式庫的行為
- 預期與實際行為的差異
</explanation>
```

### 階段 7：除錯指示

提供清晰、可執行的修復步驟：

```xml
<debug_instructions>
1. [步驟標題]
   a. [詳細操作]
   b. [相關指令或程式碼]
   c. [預期結果]

2. [下一個步驟]
   ...

[包含]：
- 修改前的程式碼
- 修改後的程式碼
- 逐行說明
- 測試驗證方法
</debug_instructions>
```

---

## 使用方式

### 步驟 1：收集資訊

準備以下資訊：

```markdown
**錯誤訊息**：
[完整的錯誤堆疊追蹤]

**使用者任務**：
[錯誤發生時的操作]

**相關程式碼**：
[附上相關的程式碼檔案]

**應用場景**：
[應用程式的用途與架構]
```

### 步驟 2：執行分析

依照七個階段進行系統化分析：

1. 錯誤分析
2. 預測可能原因（5 個）
3. 程式碼審查（保留/排除預測）
4. 問題程式碼識別
5. 逐步推理
6. 詳細解釋
7. 除錯指示

### 步驟 3：實施修復

根據除錯指示：

1. 執行建議的修改
2. 測試驗證
3. 記錄修復過程
4. 確認問題解決

---

## 範例：Flask 非同步錯誤

### 錯誤訊息

```
TypeError: 'function' object is not iterable
Traceback (most recent call last):
  File "/werkzeug/wsgi.py", line 256, in __next__
    return self._next()
  ...
```

### 使用者任務

點擊「開始訪談」按鈕時發生錯誤。

### 預測

```xml
<predictions>
1. generate() 函式未正確實作為可迭代物件
2. /api/chat 路由的回傳類型與實作不符
3. process_user_message() 函式的 yield 使用錯誤
4. Flask 應用的非同步處理問題
5. 前端與後端互動的問題
</predictions>
```

### Scratchpad

```xml
<scratchpad>
1. 檢查 generate() 函式：
   - 定義為 async 函式，正確用於串流回應
   - 但 Flask 的 stream_with_context() 期待一般迭代器
   - 保留預測 1

2. 檢查 process_user_message()：
   - 也是 async 函式
   - 正確使用 yield
   - 但與 Flask 的同步特性衝突
   - 保留預測 3

3. 檢查 Flask 路由：
   - 路由定義為 async 但 Flask 原生不支援
   - 保留預測 4

4. 檢查前端：
   - fetch 實作正確
   - 排除預測 5

5. 排除預測 2（回傳類型正確）

結論：
- 根本原因是 async/await 與 Flask 同步特性的衝突
- 需要改用支援非同步的框架（如 Quart）
</scratchpad>
```

### 問題程式碼

```xml
<problematic_code>
@app.route('/api/chat', methods=['POST'])
async def chat():
    user_message = request.json['message']
    async def generate():
        async for chunk in process_user_message(user_message):
            yield chunk
    return Response(stream_with_context(generate()), content_type='text/plain')
</problematic_code>
```

### 逐步推理

```xml
<step_by_step_reasoning>
1. 錯誤發生在 WSGI 中介層嘗試迭代 generate() 時
2. generate() 是 async 函式，但 stream_with_context() 期待普通迭代器
3. Flask 預設不支援 async 視圖
4. 即使定義為 async，Flask 也不會正確處理
5. 解決方案：
   a) 轉換為同步函式，或
   b) 使用支援 async 的框架（Quart）
6. 考慮專案已大量使用 async，選擇方案 b
</step_by_step_reasoning>
```

### 解釋

```xml
<explanation>
根本原因是非同步實作與 Flask 同步特性的衝突。

generate() 是 async generator，但 Flask 的 stream_with_context() 
期待普通迭代器。當 WSGI 伺服器嘗試迭代回應時，遇到函式物件而非
迭代器，導致 TypeError。

整個路由定義為 async，但 Flask 原生不支援 async 視圖。因此
generate() 和 process_user_message() 的非同步特性無法正確處理。
</explanation>
```

### 除錯指示

```xml
<debug_instructions>
1. 安裝所需套件：
   pip install quart quart-cors

2. 修改 imports：
   修改前：
   from flask import Flask, request, Response
   
   修改後：
   from quart import Quart, request, Response
   from quart_cors import cors

3. 初始化應用：
   修改前：
   app = Flask(__name__)
   
   修改後：
   app = Quart(__name__)
   app = cors(app)

4. 修改 chat 路由：
   修改前：
   return Response(stream_with_context(generate()), content_type='text/plain')
   
   修改後：
   return Response(generate(), content_type='text/plain')

5. 更新其他路由為 async

6. 修改啟動方式：
   from hypercorn.asyncio import serve
   from hypercorn.config import Config
   
   config = Config()
   config.bind = ["localhost:5000"]
   asyncio.run(serve(app, config))

7. 測試驗證：
   - 啟動應用
   - 點擊「開始訪談」按鈕
   - 確認串流回應正常運作
</debug_instructions>
```

---

## 最佳實踐

### 1. 全面性分析

- **不要急於下結論**：先收集所有相關資訊
- **考慮多種可能**：至少 5 個預測
- **系統化排除**：有邏輯地驗證或否定每個預測

### 2. 詳細記錄

- **Scratchpad 詳盡**：記錄所有思考過程
- **說明理由**：每個判斷都要有根據
- **保持客觀**：基於證據而非假設

### 3. 清晰溝通

- **結構化輸出**：使用 XML 標籤組織內容
- **段落分隔**：確保可讀性
- **完整說明**：提供足夠的技術背景

### 4. 可執行指示

- **具體步驟**：每個步驟都清楚可執行
- **程式碼範例**：提供修改前後的對比
- **驗證方法**：說明如何確認修復成功

---

## 注意事項

- ⚠️ **不要忽略小細節**：有時小問題導致大錯誤
  
- ⚠️ **檢查版本相容性**：框架、函式庫的版本差異
  
- 💡 **查閱官方文件**：確認正確的用法
  
- 💡 **重現錯誤**：在本地環境複製問題
  
- 💡 **段落式記錄**：確保回應有適當的格式與空白

---

## 進階技巧

### 技巧 1：使用除錯工具

```python
# 設定詳細的日誌
import logging
logging.basicConfig(level=logging.DEBUG)

# 使用斷點
import pdb; pdb.set_trace()
```

### 技巧 2：隔離問題

建立最小化重現範例（Minimal Reproducible Example）：

```python
# 移除無關程式碼
# 專注於問題核心
# 逐步驗證
```

### 技巧 3：查看原始碼

深入框架或函式庫的實作：
- 了解預期行為
- 識別不相容之處
- 找到正確用法

---

## 常見錯誤類型

### 1. 型別錯誤 (TypeError)
- 函式參數類型不符
- 迭代器使用錯誤
- None 型別操作

### 2. 屬性錯誤 (AttributeError)
- 物件沒有該屬性
- 模組匯入錯誤
- 方法名稱拼寫錯誤

### 3. 鍵錯誤 (KeyError)
- 字典鍵不存在
- JSON 欄位缺失
- 設定檔錯誤

### 4. 匯入錯誤 (ImportError)
- 套件未安裝
- 模組路徑錯誤
- 循環匯入

### 5. 非同步錯誤 (Async Errors)
- async/await 使用錯誤
- 事件迴圈問題
- 框架相容性

---

## 相關 Skills

- [Webapp Testing](../testing/webapp-testing/SKILL.md) - Web 應用測試
- [Code Review](../code-review/) - 程式碼審查

---

**版本歷史**：
- v1.0.0 (2026-01-18)：初始版本

**維護者**：Other  
**最後更新**：2026-01-18  
**授權**：來自社群範例
