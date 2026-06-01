# Ikigai Output · Visual Style Library
## 3 named aesthetics · pick ONE based on user's mood/answers

> **How to use this:** when synthesizing the user's Ikigai output · pick ONE style from the 3 below based on signal from their answers.
> Then inject the style's prompt + color palette into the HTML output generation.

---

## STYLE 1 · NEURAL NOIR (Bold · Tech-Confident · 10X Energy)

**Pick this when:** user's answers signal hustle · scale · "I want to win big" · ambition · monetization-forward language.

**Source:** Superdesign.dev "Neural Noir" style + Aceternity Aurora Background

**Color palette:**
```css
--bg: #000000 (pure black)
--bg-secondary: #0A0A0F (deep midnight)
--text: #FFFFFF
--text-muted: #A0A0B0
--accent: #FF3366 (electric magenta-red)
--accent-secondary: #00FFCC (electric cyan · use sparingly)
--gradient: linear-gradient(135deg, #FF3366 0%, #B91D5C 50%, #4A0E2E 100%)
```

**Typography:**
- Display: `Fraunces` italic · 96pt+ for hero
- Body: `Inter` 500 · 17pt
- Mono accent: `JetBrains Mono` for stats

**Hero treatment:**
- Pitch-black background with subtle animated aurora gradient (Aceternity AuroraBackground component)
- Hero text in massive serif italic · white · with magenta-red accent under key words
- Ikigai sentence appears letter-by-letter with TextGenerateEffect (Aceternity)

**Diagram treatment:**
- 4 circles glow with magenta-red edges
- Center circle pulses with subtle gradient animation
- Connecting lines between overlapping zones · animated draw-in on scroll

**Animation style:**
- Framer Motion stagger fade-ins on scroll
- Spotlight effect on hover (Aceternity Spotlight)
- Numbers count up on view (Magic UI NumberTicker)

**Vibe:** Daniel's keynote · Apple event · "this is the future"

---

## STYLE 2 · SOFT IKIGAI (Calm · Centered · Reflective · Editorial)

**Pick this when:** user's answers signal balance · family · meaning · "I want freedom not empire" · service-oriented language.

**Source:** Superdesign.dev "Soft Pastel" + New York Times feature aesthetic

**Color palette:**
```css
--bg: #FAFAF8 (warm off-white)
--bg-secondary: #F4F1EB (soft cream)
--text: #1A1A1C (warm black)
--text-muted: #6B6B6E
--accent: #E94B5C (coral red · less aggressive)
--accent-secondary: #5C7F8C (soft slate blue)
--gradient: linear-gradient(180deg, #FAFAF8 0%, #F4F1EB 100%)
```

**Typography:**
- Display: `Fraunces` 800 · serif · 72pt
- Body: `Inter` 400 · 18pt · generous line-height
- Quotes: `Fraunces` italic · large

**Hero treatment:**
- Warm off-white background · no animation in hero
- Hero text in classic NYT feature style
- Subtle hand-drawn divider lines (SVG)

**Diagram treatment:**
- 4 circles in soft coral · semi-transparent
- Center is gold-leaf inspired (subtle gradient · not flat)
- Watercolor texture (subtle SVG noise)

**Animation style:**
- Slow fade-ins · no quick motion
- Soft hover states · gentle scale (1.02)
- No spinning · no aurora · no flash

**Vibe:** Krista Tippett's "On Being" · a Sunday morning reading · The Atlantic feature

---

## STYLE 3 · ARCHITECTURAL BLUEPRINT (Clean · Strategic · Frameworks-Driven)

**Pick this when:** user's answers signal systems · strategy · consulting · "I think in frameworks" · structured language.

**Source:** Superdesign.dev "Architectural Blueprint" + shadcn/ui defaults

**Color palette:**
```css
--bg: #FFFFFF (pure white)
--bg-secondary: #F8F9FA
--text: #0A0A0A
--text-muted: #6B7280
--accent: #1E40AF (deep cobalt blue)
--accent-secondary: #DC2626 (clean red · for highlights)
--grid-line: #E5E7EB
--gradient: none (flat colors only)
```

**Typography:**
- Display: `Inter` 900 · sans-serif · 64pt · tight letter-spacing
- Body: `Inter` 400 · 16pt
- Stats: `JetBrains Mono` 500 · 14pt

**Hero treatment:**
- Pure white background with subtle dot grid pattern
- Numbered sections (01 · 02 · 03 · 04)
- Hero text in clean sans · no italics

**Diagram treatment:**
- 4 circles drawn as architectural blueprint lines (1px · cobalt)
- Center marked with clean target/crosshair icon
- Grid background subtly visible behind diagram

**Animation style:**
- Sharp · instant transitions (no easing curves)
- Hover states are color-swaps only (no scaling)
- Numbers appear with monospace ticker (Magic UI)

**Vibe:** McKinsey deck · The Information article · a16z portfolio doc · CB Insights

---

## SIGNAL DETECTION · WHICH STYLE TO PICK

Analyze the user's 16 answers for these signals:

**→ NEURAL NOIR if they say:**
- "10X" · "scale" · "empire" · "millions" · "winning"
- "I want to dominate / disrupt / build big"
- Aggressive ambition language
- Tech / SaaS / startup vocabulary

**→ SOFT IKIGAI if they say:**
- "family" · "kids" · "balance" · "freedom" · "presence"
- "I want time back" · "I want to be home more"
- Wellness / health / mindfulness vocabulary
- Service / community / impact language

**→ ARCHITECTURAL BLUEPRINT if they say:**
- "system" · "framework" · "process" · "method" · "strategy"
- "I think in models" · "I love structure"
- Consulting / professional services vocabulary
- B2B / enterprise / operations focus

**Default if unclear:** SOFT IKIGAI (broadest appeal · safest aesthetic)

**Always ask:** at the start of Phase 5 (Synthesis) · ask the user:

> *"Before I generate your Ikigai page · pick an aesthetic:*
>
> *1. BOLD — Black background · electric red · keynote feel*
> *2. SOFT — Editorial · warm cream · NYT-feature feel*
> *3. CLEAN — White · blueprint · consultancy-deck feel*
>
> *Type 1, 2, or 3 · or trust my pick: [SUGGESTED_STYLE]"*

---

## TECHNICAL IMPLEMENTATION

When Claude generates the output HTML:

1. **Read user's style preference** (or use detected signal)
2. **Replace the CSS variables** in `ikigai-template.html` with the chosen palette
3. **Replace font imports** with the chosen typography
4. **Add the corresponding library** via CDN:
   - Neural Noir: include Aceternity Aurora + Framer Motion
   - Soft Ikigai: include only base Tailwind (no fancy animation libs)
   - Blueprint: include only base Tailwind + maybe Tremor for stats
5. **Adjust SVG diagram colors** to match palette
6. **Pick animation style** per the style guide above

---

## EXAMPLE · HOW IT LOOKS IN PRACTICE

User's signals: "I want to scale to $10M · build a tech business · disrupt my industry"
→ **STYLE PICK: NEURAL NOIR**

```html
<!-- Replace template.html CSS variables -->
:root {
  --color-text: #FFFFFF;
  --color-bg: #000000;
  --color-accent: #FF3366;
  --color-card: #0A0A0F;
}

<!-- Add to <head> for animations -->
<script src="https://unpkg.com/framer-motion@10/dist/framer-motion.js"></script>

<!-- Update body class -->
<body class="bg-black text-white">
```

Result: a stunning dark · electric · animated Ikigai page.

---

## CREDITS + SOURCES

- **21st.dev** · https://21st.dev · "npm for design engineers" · shadcn marketplace
- **Aceternity UI** · https://ui.aceternity.com · animation library
- **Magic UI** · https://magicui.design · micro-interactions
- **Superdesign.dev** · https://app.superdesign.dev/library · style prompt library
- **shadcn/ui** · https://ui.shadcn.com · base component layer
- **Tremor** · https://tremor.so · data viz
- **Information Is Beautiful · Ikigai** · https://informationisbeautiful.net/visualizations/ikigai-japanese-concept · diagram inspiration

---

Document version: 1.0
For: Ikigai Discovery Journey Skill
Updated after design library research: 2026-05-17
