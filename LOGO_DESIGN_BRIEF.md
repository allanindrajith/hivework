# 🐝 Hivework — Logo & Brand Design Brief

A comprehensive brief for designing the logo, app icon, and brand marks for **Hivework** (The autonomous AI workforce platform).

---

## 1. Brand Essence & Story

- **Product Name**: Hivework
- **Category**: AI Agent Orchestration, Developer Tools, Autonomous Workforce
- **Core Tagline**: *"A complete AI workforce at your fingertips."*
- **What It Does**: Distributes 280+ specialized AI agents (engineering, research, marketing, security, design) directly to developer laptops and IDEs.
- **The Metaphor**: 
  - **Hive**: Swarm intelligence, modular hexagonal cells, collective coordination, flawless role specialization.
  - **Work**: Production software development, speed, task execution, developer command-line precision.

---

## 2. Brand Personality & Tone

| Trait | Target Feeling | What to AVOID |
|---|---|---|
| **Tech Level** | High-precision developer infrastructure | Cartoonish or children's mascot |
| **Aesthetic** | VoltAgent-inspired, dark-canvas, terminal-native | Generic colorful corporate SaaS |
| **Geometry** | Crisp, geometric, faceted, angular | Organic, fuzzy, or illustrative shapes |
| **Scalability** | Readable from 16×16 favicon to billboard | Overly intricate line networks that blur at small scale |

---

## 3. Visual Clues & Motifs

1. **The Hexagon (Honeycomb)**
   - The fundamental structural unit of a beehive.
   - Represents modular agent slots, plugin architectures, and micro-services.
2. **Abstract Bee Silhouette / Wings**
   - Geometric, faceted wings resembling code brackets `{ }`, terminal prompts `>`, or chevron vectors.
   - Suggests flight, speed, and continuous industrious activity.
3. **Network Nodes & Circuit Traces**
   - Lines connecting the vertices of the hexagon to symbolize inter-agent communication and mesh networking.
4. **Negative Space**
   - Utilizing negative space inside a hexagon to reveal an abstract "H", a bee stinger, or an upward velocity arrow.

---

## 4. Official Color Palette

Strictly aligned with [`DESIGN.md`](./DESIGN.md):

```yaml
brand_colors:
  primary: "#f59e0b"          # Honeycomb Amber (Signature accent)
  primary_highlight: "#fbbf24" # Bright Gold (Glow, highlights, hover)
  primary_deep: "#d97706"     # Deep Honey (Pressed states, shadows)
  canvas_dark: "#0d0c0a"      # Obsidian Black (Background canvas)
  surface_charcoal: "#171511" # Warm Charcoal (Inner card / contrast fill)
  hairline_border: "#2d2920"  # Subtle 1px warm border
  ink_white: "#ffffff"        # High-contrast elements
```

---

## 5. Official Logo Design: The "Circuit Hex" (Selected)

Hivework's official brand identity is **The Circuit Hex**:
- **Design Structure**: A regular hexagon where internal traces form an abstract bee head and wings, doubling as an integrated circuit and multi-agent network node.
- **Why it works**: Communicates both "Hive" and "Engineering" instantly. Clean like Linear, Docker, or Kubernetes marks.
- **Brand Assets**: Production SVG and PNG assets are stored in `assets/` (`logo.svg` and `logo-icon.svg` today; the black/white variants, horizontal lockup and `app-icon-1024.png` are still to be produced).

---

## 6. Ready-to-Use Designer & AI Prompts

### Midjourney / DALL-E / Flux Prompt:
```text
Minimalist vector logo for "Hivework" developer platform. An abstract geometric icon combining a honeycomb hexagon, circuit traces, and stylized sleek bee wings. Flat vector emblem, sharp corners, obsidian dark background #0d0c0a, glowing amber gold #f59e0b and white accents. Tech branding, modern, high contrast, clean negative space, scalable app icon, no realistic bee anatomy, no text. --v 6.1 --ar 1:1
```

### Favicon & App Icon Prompt:
```text
Modern tech app icon for "Hivework", glowing amber hexagon with minimalist geometric bee wings, dark obsidian background #0d0c0a, vector glyph, iOS squircle format, 1024x1024 resolution.
```

---

## 7. Deliverables Checklist for the Designer

- [ ] **Vector Master Files**: `.svg`, `.ai`, `.eps`
- [ ] **App Icon Assets**: 1024×1024 PNG (with and without dark background)
- [ ] **Favicon Package**: 16×16, 32×32, 48×48 `.png` and `.ico`
- [ ] **Horizontal Lockup**: Icon + "Hivework" logotype (Inter 600 weight)
- [ ] **Monochrome Version**: Pure white `#ffffff` and pure black `#000000` variants
