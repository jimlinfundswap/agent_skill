---
name: "建立美觀落地頁"
category: "web-development"
source: "Custom"
version: "1.0.0"
author: "Agent Skills Team"
tags:
  - frontend
  - landing-page
  - ui-design
  - responsive
scenarios:
  - "需要快速建立產品介紹頁面"
  - "需要為行銷活動製作宣傳頁"
  - "需要展示個人作品集或服務"
difficulty: "beginner"
updated: "2026-01-18"
---

# 建立美觀落地頁

## 概述

這個 skill 幫助您快速建立專業級的網頁落地頁（Landing Page）。透過結構化的開發流程與設計原則，您可以在短時間內完成美觀、響應式且具有吸引力的頁面，無需從零開始設計。

本 skill 強調**視覺優先**、**動態設計**與**無需使用佔位符** - 所有元素都應是可直接使用的實際內容。

## 適用情境

- 🎯 **產品發布**：需要為新產品建立介紹與展示頁面
  
- 🎯 **行銷活動**：快速製作活動宣傳頁、促銷頁
  
- 🎯 **個人品牌**：展示作品集、個人簡歷或服務介紹

- 🎯 **A/B 測試**：快速產出多個版本進行測試

## 使用方式

### 前置準備

- 基本的 HTML/CSS/JavaScript 知識
- 明確的頁面目標（吸引註冊、產品展示、資訊傳達等）
- 準備好實際內容（文案、品牌色彩等）

### 使用步驟

#### 步驟 1：規劃頁面架構

決定落地頁的核心區塊，常見結構：

```
1. Hero Section - 主視覺與核心訊息
2. Features - 產品/服務特色
3. How It Works - 運作方式
4. Testimonials - 用戶見證（可選）
5. Pricing - 價格方案（可選）
6. CTA - 行動呼籲
7. Footer - 頁尾資訊
```

#### 步驟 2：建立設計系統

在 CSS 中定義設計 tokens：

```css
:root {
  /* 色彩系統 - 使用現代化的漸層色 */
  --primary-hue: 240;
  --primary-color: hsl(var(--primary-hue), 70%, 55%);
  --primary-dark: hsl(var(--primary-hue), 70%, 45%);
  --primary-light: hsl(var(--primary-hue), 70%, 65%);
  
  /* 中性色 */
  --bg-color: hsl(220, 20%, 10%);
  --surface-color: hsl(220, 15%, 15%);
  --text-primary: hsl(0, 0%, 95%);
  --text-secondary: hsl(0, 0%, 70%);
  
  /* 間距系統 */
  --spacing-xs: 0.5rem;
  --spacing-sm: 1rem;
  --spacing-md: 2rem;
  --spacing-lg: 4rem;
  --spacing-xl: 6rem;
  
  /* 字體系統 */
  --font-primary: 'Inter', -apple-system, sans-serif;
  --font-size-sm: 0.875rem;
  --font-size-md: 1rem;
  --font-size-lg: 1.5rem;
  --font-size-xl: 2.5rem;
  --font-size-hero: 4rem;
}
```

#### 步驟 3：實作核心區塊

從 Hero Section 開始，依序實作各區塊：

**Hero Section 範例**：
```html
<section class="hero">
  <div class="hero-content">
    <h1 class="hero-title">打造您的夢想產品</h1>
    <p class="hero-subtitle">最快速、最美觀的解決方案</p>
    <button class="cta-button">立即開始</button>
  </div>
  <div class="hero-visual">
    <!-- 使用 generate_image 工具產生實際圖片 -->
  </div>
</section>
```

```css
.hero {
  min-height: 100vh;
  display: grid;
  grid-template-columns: 1fr 1fr;
  align-items: center;
  gap: var(--spacing-lg);
  background: linear-gradient(135deg, var(--bg-color), var(--surface-color));
}

.hero-title {
  font-size: var(--font-size-hero);
  font-weight: 800;
  background: linear-gradient(135deg, var(--primary-light), var(--primary-color));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: fadeInUp 0.8s ease-out;
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
```

#### 步驟 4：加入互動與動畫

```css
.cta-button {
  padding: 1rem 2rem;
  font-size: var(--font-size-lg);
  background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
  border: none;
  border-radius: 12px;
  color: white;
  cursor: pointer;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

.cta-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.4);
}

.cta-button:active {
  transform: translateY(0);
}
```

#### 步驟 5：確保響應式設計

```css
@media (max-width: 768px) {
  .hero {
    grid-template-columns: 1fr;
    padding: var(--spacing-md);
  }
  
  .hero-title {
    font-size: var(--font-size-xl);
  }
}
```

### 關鍵原則

| 原則 | 說明 | 實作方式 |
|------|------|---------|
| 視覺優先 | 第一印象必須驚艷 | 使用漸層、動畫、高品質視覺 |
| 避免佔位符 | 所有內容都應是實際內容 | 使用 generate_image 產生真實圖片 |
| 動態設計 | 頁面要有生命力 | Hover 效果、微動畫、過渡效果 |
| 響應式優先 | 所有裝置都完美顯示 | Mobile-first CSS、媒體查詢 |

## 範例

### 範例 1：SaaS 產品落地頁

請參考 `examples/saas-landing-page.html` 查看完整實作。

**關鍵特色**：
- 深色主題配合品牌色漸層
- 平滑滾動動畫
- 互動式特色卡片
- 響應式導覽列

### 範例 2：個人作品集頁面

請參考 `examples/portfolio-landing.html` 查看完整實作。

**關鍵特色**：
- 全螢幕 Hero 視覺
- 作品網格展示
- Glassmorphism 設計風格
- 深色/淺色主題切換

## 注意事項

- ⚠️ **不使用佔位符圖片**：永遠使用真實內容或透過 `generate_image` 工具產生
  - ❌ 錯誤：`<img src="placeholder.jpg">`
  - ✅ 正確：使用實際產品截圖或 AI 產生的視覺
  
- ⚠️ **避免通用色彩**：不使用純紅、純藍、純綠
  - ❌ `background: #ff0000`
  - ✅ `background: hsl(240, 70%, 55%)`
  
- 💡 **善用現代字體**：使用 Google Fonts 如 Inter、Roboto、Outfit
  ```html
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet">
  ```

- 💡 **微動畫提升體驗**：所有互動元素都應有過渡效果
  ```css
  * {
    transition: all 0.3s ease;
  }
  ```

## 進階技巧

### 技巧 1：Glassmorphism 效果

```css
.glass-card {
  background: rgba(255, 255, 255, 0.1);
  backdrop-filter: blur(10px);
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.2);
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
}
```

### 技巧 2：滾動觸發動畫

```javascript
const observerOptions = {
  threshold: 0.1,
  rootMargin: '0px 0px -100px 0px'
};

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('animate-in');
    }
  });
}, observerOptions);

document.querySelectorAll('.animate-on-scroll').forEach(el => {
  observer.observe(el);
});
```

### 技巧 3：自適應漸層背景

```css
body {
  background: 
    radial-gradient(circle at 20% 50%, hsla(var(--primary-hue), 70%, 50%, 0.2), transparent 50%),
    radial-gradient(circle at 80% 80%, hsla(calc(var(--primary-hue) + 60), 70%, 50%, 0.2), transparent 50%),
    var(--bg-color);
}
```

## 常見問題

**Q1: 如何選擇配色方案？**  
A: 使用 HSL 色彩系統，固定飽和度與亮度，只調整色相（Hue）。這樣能確保色彩和諧。

**Q2: 需要使用 CSS 框架嗎？**  
A: 不一定。Vanilla CSS 提供最大彈性，TailwindCSS 可加速開發，但會增加複雜度。

**Q3: 如何確保載入速度？**  
A: 
- 優化圖片（WebP 格式）
- 延遲載入非關鍵資源
- 使用 CSS 而非大型 JS 函式庫

## 相關 Skills

- [響應式設計](../web-development/responsive-design/SKILL.md) - 深入學習響應式佈局
- [產生 UI 圖片](../design/generate-ui-images/SKILL.md) - 使用 AI 產生視覺素材
- [網頁動畫](../web-development/web-animations/SKILL.md) - 進階動畫技巧

## 參考資源

- [Google Fonts](https://fonts.google.com/) - 免費高品質字體
- [HSL Color Picker](https://hslpicker.com/) - HSL 色彩選擇器
- [CSS Gradient Generator](https://cssgradient.io/) - 漸層產生器

---

**版本歷史**：
- v1.0.0 (2026-01-18)：初始版本

**維護者**：Agent Skills Team  
**最後更新**：2026-01-18
