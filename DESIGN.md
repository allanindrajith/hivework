---
version: 1.0.0
name: Hivework-Design-System
description: An inspired interpretation of VoltAgent's developer-centric design language, customized for Hivework — an autonomous AI workforce platform. The interface combines an unrelenting obsidian-charcoal canvas with glowing honeycomb amber accents, 1px warm-hairline bordered agent cards, and terminal-native execution surfaces.

colors:
  # Brand & Accent (Honeycomb & Amber)
  primary: "#f59e0b"          # Vibrant Honey Amber — Primary CTAs, active indicators, agent status
  primary-soft: "#fbbf24"     # Bright Honeycomb Gold — Hover states, focus rings, tooltip badges
  primary-deep: "#d97706"     # Deep Amber — Pressed states, active tabs, inline link accents
  on-primary: "#0d0c0a"       # Obsidian Ink — Text on primary amber buttons

  # Surfaces (Dark Hive Canvas)
  canvas: "#0d0c0a"           # Obsidian near-black page background
  canvas-soft: "#171511"      # Elevated cards, terminal window, agent cards, inputs
  canvas-text-soft: "#fdfbf7" # Code snippet text, monospace terminal output

  # Hairlines & Dividers
  hairline: "#2d2920"         # 1px border with subtle warm-amber undertone
  hairline-soft: "#3d372b"    # Secondary divider / tab lines

  # Typography (Warm Ink & Legibility)
  ink-strong: "#ffffff"       # Pure white headers & high-emphasis titles
  ink: "#f7f5f0"              # Warm off-white section headlines
  body: "#c2beb5"             # High-legibility warm body copy
  mute: "#8c867a"             # Low-contrast captions, metadata, timestamps

typography:
  display-xl:
    fontFamily: Inter, system-ui, -apple-system, Segoe UI, Roboto, sans-serif
    fontSize: 60px
    fontWeight: 600
    lineHeight: 64px
    letterSpacing: -0.65px
  display-lg:
    fontFamily: Inter, system-ui, -apple-system, Segoe UI, Roboto, sans-serif
    fontSize: 36px
    fontWeight: 600
    lineHeight: 40px
    letterSpacing: -0.5px
  display-md:
    fontFamily: Inter, system-ui, -apple-system, Segoe UI, Roboto, sans-serif
    fontSize: 24px
    fontWeight: 700
    lineHeight: 32px
    letterSpacing: -0.4px
  display-sm:
    fontFamily: Inter, system-ui, -apple-system, Segoe UI, Roboto, sans-serif
    fontSize: 20px
    fontWeight: 600
    lineHeight: 28px
  eyebrow-mono:
    fontFamily: "SF Mono", "JetBrains Mono", Menlo, Consolas, monospace
    fontSize: 13px
    fontWeight: 600
    lineHeight: 20px
    letterSpacing: 1.5px
  body-lg:
    fontFamily: Inter, system-ui, -apple-system, sans-serif
    fontSize: 18px
    fontWeight: 400
    lineHeight: 28px
  body-md:
    fontFamily: Inter, system-ui, -apple-system, sans-serif
    fontSize: 16px
    fontWeight: 400
    lineHeight: 26px
  body-sm:
    fontFamily: Inter, system-ui, -apple-system, sans-serif
    fontSize: 14px
    fontWeight: 400
    lineHeight: 20px
  caption:
    fontFamily: Inter, system-ui, -apple-system, sans-serif
    fontSize: 12px
    fontWeight: 400
    lineHeight: 16px
  code:
    fontFamily: "SF Mono", "JetBrains Mono", Menlo, Consolas, monospace
    fontSize: 13px
    fontWeight: 400
    lineHeight: 20px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  2xl: 32px
  3xl: 48px
  4xl: 64px
  section: 96px

rounded:
  none: 0px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  pill: 9999px

elevation:
  none: "none"
  card: "0 1px 3px rgba(0, 0, 0, 0.4)"
  glow-amber: "0 0 20px rgba(245, 158, 11, 0.25)"

---

# 🐝 Hivework Design System

## Overview
Hivework is an AI workforce platform built for technical operators and builders. The design merges **VoltAgent's developer-focused precision** with a rich **Bee Hive color identity**:

- **Obsidian Dark Canvas** (`#0d0c0a`) avoids eye strain during prolonged sessions.
- **Glowing Honeycomb Amber** (`#f59e0b`) drives focus directly to primary actions and agent statuses.
- **1px Hairline Borders** (`#2d2920`) define strict spatial modularity without visual clutter.
- **Dual-Type Hierarchy**: Clean `Inter` typography paired with monospace `SF Mono` for commands, outputs, and agent parameters.

---

## Colors

### Brand & Accent (Bee Hive Honeycomb)
- **Primary Amber** (`{colors.primary}` — `#f59e0b`): The central brand color. Applied to primary CTA buttons ("Deploy Workforce", "Install Agent"), status badges, and prompt cursors.
- **Primary Soft / Hover** (`{colors.primary-soft}` — `#fbbf24`): Hovered and focus states for interactive amber elements.
- **Primary Deep** (`{colors.primary-deep}` — `#d97706`): Pressed buttons, active selection bars, and high-emphasis links.
- **On Primary** (`{colors.on-primary}` — `#0d0c0a`): Obsidian text on primary amber surfaces providing an **11.4:1 contrast ratio** (WCAG AAA compliant).

### Surface & Elevation
- **Canvas** (`{colors.canvas}` — `#0d0c0a`): Root page background. Continuous edge-to-edge dark workspace floor.
- **Canvas Soft** (`{colors.canvas-soft}` — `#171511`): Elevated card containers, agent tiles, command terminals, and form fields.
- **Canvas Text Soft** (`{colors.canvas-text-soft}` — `#fdfbf7`): High-clarity monospace code in terminal windows.
- **Hairline** (`{colors.hairline}` — `#2d2920`): 1px perimeter border on cards, inputs, and split panes.
- **Hairline Soft** (`{colors.hairline-soft}` — `#3d372b`): Subtle inner dividers and table row borders.

### Typography & Ink
- **Ink Strong** (`{colors.ink-strong}` — `#ffffff`): Hero titles, agent card names, and primary metrics.
- **Ink** (`{colors.ink}` — `#f7f5f0`): Section headers and primary readable content.
- **Body** (`{colors.body}` — `#c2beb5`): Explanatory text, agent role descriptions, and parameters.
- **Mute** (`{colors.mute}` — `#8c867a`): Timestamps, tool versions, keyboard shortcuts, and metadata.

---

## Components

### Buttons
- **`button-primary`**: Amber action button.
  - Background: `{colors.primary}` (`#f59e0b`)
  - Text: `{colors.on-primary}` (`#0d0c0a`), font-weight 600
  - Hover: `{colors.primary-soft}` (`#fbbf24`) with `{elevation.glow-amber}`
  - Border-radius: `{rounded.sm}` (6px) or `{rounded.pill}` (9999px)
  - Padding: `10px 18px`

- **`button-secondary-outline`**: Subtle dark button.
  - Background: `{colors.canvas-soft}` (`#171511`)
  - Text: `{colors.ink}` (`#f7f5f0`)
  - Border: 1px solid `{colors.hairline}` (`#2d2920`)
  - Hover: Border color shifts to `{colors.primary-deep}` (`#d97706`)

- **`pill-status-badge`**: Agent status indicator.
  - Background: `rgba(245, 158, 11, 0.12)`
  - Text: `{colors.primary}` (`#f59e0b`)
  - Border: 1px solid `rgba(245, 158, 11, 0.28)`
  - Border-radius: `{rounded.pill}`

### Cards & Layout Containers
- **`agent-card`**: Standard container for displaying specialized AI agents.
  - Background: `{colors.canvas-soft}` (`#171511`)
  - Border: 1px solid `{colors.hairline}` (`#2d2920`)
  - Border-radius: `{rounded.md}` (8px)
  - Padding: `{spacing.xl}` (24px)
  - Hover: 1px solid `{colors.primary-deep}` with subtle amber border lift.

- **`terminal-window`**: Interactive CLI / command block.
  - Header: Dark title bar with terminal controls and amber active indicator dot.
  - Background: `{colors.canvas-soft}` (`#171511`)
  - Border: 1px solid `{colors.hairline}` (`#2d2920`)
  - Code Text: Monospace `{colors.canvas-text-soft}` with amber prompt character `>`

---

## Do's and Don'ts

### Do:
- **Keep canvas unified**: Maintain `#0d0c0a` across the full viewport without full-bleed white or gray sections.
- **Use amber for intentional signals**: Reserve `#f59e0b` for calls to action, active tabs, and agent readiness.
- **Maintain 1px hairlines**: Use `#2d2920` for precise, architectural grid alignment.
- **Respect typographic roles**: Use `SF Mono` exclusively for commands, model tags, and numeric metrics.

### Don't:
- **Don't use cold neon greens or blues**: Stay within the warm amber/honeycomb spectrum.
- **Don't use heavy blurry box-shadows**: Rely on 1px hairlines and discrete surface elevation.
- **Don't mix pure black `#000000` arbitrarily**: Keep surfaces locked to `{colors.canvas}` (`#0d0c0a`) and `{colors.canvas-soft}` (`#171511`).
