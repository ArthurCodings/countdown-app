# 字体文件说明

本项目使用了以下Web字体，通过Google Fonts CDN加载：

## 使用的字体

### 1. Orbitron
- **用途**: 数字显示、标题、科技感元素
- **特点**: 未来感强烈的等宽字体，适合数字时钟显示
- **权重**: 400, 700, 900
- **来源**: [Google Fonts - Orbitron](https://fonts.google.com/specimen/Orbitron)
- **许可**: SIL Open Font License

### 2. Noto Sans SC (思源黑体)
- **用途**: 中文文本、界面文字、名言显示
- **特点**: 优秀的中文显示效果，多重量支持
- **权重**: 400, 500, 700
- **来源**: [Google Fonts - Noto Sans SC](https://fonts.google.com/specimen/Noto+Sans+SC)
- **许可**: SIL Open Font License

## CDN 加载方式

字体通过以下方式在HTML中加载：

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Noto+Sans+SC:wght@400;500;700&display=swap" rel="stylesheet">
```

## 本地字体备选方案

如果需要离线使用或更好的加载性能，可以下载字体文件到此目录：

### 文件结构
```
assets/fonts/
  orbitron/
    Orbitron-Regular.woff2
    Orbitron-Bold.woff2
    Orbitron-Black.woff2
  noto-sans-sc/
    NotoSansSC-Regular.woff2
    NotoSansSC-Medium.woff2
    NotoSansSC-Bold.woff2
```

### CSS 修改

使用本地字体时，需要在 `styles.css` 中添加：

```css
@font-face {
  font-family: 'Orbitron';
  src: url('assets/fonts/orbitron/Orbitron-Regular.woff2') format('woff2');
  font-weight: 400;
  font-display: swap;
}

@font-face {
  font-family: 'Orbitron';
  src: url('assets/fonts/orbitron/Orbitron-Bold.woff2') format('woff2');
  font-weight: 700;
  font-display: swap;
}

@font-face {
  font-family: 'Orbitron';
  src: url('assets/fonts/orbitron/Orbitron-Black.woff2') format('woff2');
  font-weight: 900;
  font-display: swap;
}

/* Noto Sans SC 字体定义 */
@font-face {
  font-family: 'Noto Sans SC';
  src: url('assets/fonts/noto-sans-sc/NotoSansSC-Regular.woff2') format('woff2');
  font-weight: 400;
  font-display: swap;
}

@font-face {
  font-family: 'Noto Sans SC';
  src: url('assets/fonts/noto-sans-sc/NotoSansSC-Medium.woff2') format('woff2');
  font-weight: 500;
  font-display: swap;
}

@font-face {
  font-family: 'Noto Sans SC';
  src: url('assets/fonts/noto-sans-sc/NotoSansSC-Bold.woff2') format('woff2');
  font-weight: 700;
  font-display: swap;
}
```

## 字体下载链接

### Google Fonts Helper
推荐使用 [Google Fonts Helper](https://google-webfonts-helper.herokuapp.com/fonts) 来下载字体文件：

1. 搜索 "Orbitron"
2. 选择需要的权重 (400, 700, 900)
3. 选择 "Modern Browsers" (woff2)
4. 下载字体文件和CSS

对 "Noto Sans SC" 执行相同操作。

### 直接下载
- [Orbitron - GitHub](https://github.com/theleagueof/orbitron)
- [Noto Sans - Google Fonts](https://fonts.google.com/noto/specimen/Noto+Sans)

## 性能优化建议

1. **字体预加载**:
   ```html
   <link rel="preload" href="assets/fonts/orbitron/Orbitron-Regular.woff2" as="font" type="font/woff2" crossorigin>
   ```

2. **字体显示策略**:
   - 使用 `font-display: swap` 确保文本立即可见
   - 避免 FOIT (Flash of Invisible Text)

3. **子集化**:
   - 如果只需要特定字符，可以使用字体子集化工具
   - 减少文件大小提高加载速度

## 备用字体

CSS中已定义了备用字体栈：

```css
--font-primary: 'Orbitron', 'Courier New', monospace;
--font-secondary: 'Noto Sans SC', 'PingFang SC', 'Microsoft YaHei', sans-serif;
```

这确保即使Web字体加载失败，页面仍有良好的显示效果。

## 字体许可说明

所有使用的字体都是开源字体，可以自由使用：

- **SIL Open Font License**: 允许个人和商业使用
- **无需额外许可费用**
- **可以修改和分发**

使用时建议在项目中保留字体许可信息。
