---
name: brand-foundation-builder
description: A 6-question interactive build that creates the user's BRAND.md foundation - voice, personality, colors, anti-voice, story. Triggers on "build my brand", "set up my brand foundation", "what's my brand?", "I'm preparing for 10X With AI Bootcamp Week 1". Output is a structured markdown file that every AI Employee uses to keep brand consistency across all output.
---

# Brand Foundation Builder

A guided 6-question interactive build of the user's brand foundation. Output is pinned to the AI Marketing Executive · so every piece of content matches brand voice + visual rules.

## Triggers

- "Build my brand foundation"
- "Set up my brand"
- "What's my brand?"
- "I'm preparing for 10X With AI Bootcamp Week 1"
- "Why does my AI content not feel on-brand?"

## The 6 Brand Questions

### Q1 · BRAND PROMISE
> *"In ONE sentence: what do you PROMISE your customer?"*

Format: "[Brand] helps [customer] [outcome] without [pain]."

### Q2 · BRAND PERSONALITY (4-axis spectrum)
> *"Place yourself on each spectrum 1-10:*
> *- Formal (1) ←→ Casual (10)*
> *- Serious (1) ←→ Playful (10)*
> *- Premium (1) ←→ Accessible (10)*
> *- Conservative (1) ←→ Bold (10)"*

### Q3 · BRAND VOICE (3 specific adjectives)
> *"Pick 3 adjectives that describe your brand voice.*
> *NOT generic ('professional' · 'authentic'). SPECIFIC ('warm-direct-mischievous' or 'punchy-strategic-irreverent')."*

### Q4 · BRAND COLORS
> *"What 2-3 colors define your brand? Format options:*
> *- Hex codes (e.g. #E90D41)*
> *- Color names ('cobalt blue · ivory · gold')*
> *- Paste a competitor or inspiration brand's colors I should reference"*

### Q5 · BRAND ANTI-VOICE (rejection patterns)
> *"3 things you will NEVER do · say · or look like in your brand."*

### Q6 · BRAND STORY (60-sec elevator)
> *"In 60 seconds (3-4 sentences): WHY does your brand exist? Tell me the origin moment."*

## Output

The skill generates 2 files:

1. `~/10x-with-ai/templates/BRAND.md` (markdown · Claude reads this)
2. `~/10x-with-ai/templates/brand-card.html` (visual · printable · shareable)

## What gets pinned

The BRAND.md auto-pins to:
- AI Marketing Executive Project
- AI Sales Executive Project
- AI Operations Executive Project (for customer-facing comms)
- AI CEO Brain Project (for strategic messaging)

NOT pinned to Finance Executive (irrelevant).

## Quality Floor

- [ ] Promise is specific (no platitudes like "we help businesses grow")
- [ ] Adjectives are NOT in the banned list (professional · authentic · innovative · world-class)
- [ ] Colors are concrete (hex codes preferred)
- [ ] Anti-voice has 3 specific things (not vague "don't be boring")
- [ ] Origin story is personal · not corporate

## When in the cohort

**Bootcamp Week 1 · Day 4 · Hour 2 add-on (60 min)**

After the Marketing Employee build · students run this skill.
By end of Day 4 · their Marketing Employee writes ON-BRAND content automatically.

## Skill behavior notes

- Probe lazy answers ("we help businesses grow" → "Which businesses? What kind of growth? Be specific.")
- Surface contradictions ("You said premium but accessible 10/10 · which is it?")
- Reference earlier answers (build cumulatively)
- Don't accept "I don't know" for the Promise question · push until they answer

## Companion files

- `prompts/synthesis-prompt.md`
- `brand-card-template.html` (uses the same component library as Ikigai · just remixed)

---

Skill version: 1.0.0
Author: Daniel Paul · Purely Personal
For: 10X With AI Cohort · Bootcamp Week 1
Pairs with: ikigai-discovery-journey · voice-profile-builder · business-brain-builder
