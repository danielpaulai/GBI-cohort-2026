---
name: icp-precision-builder
description: A 7-question interactive build that creates a SHARP ICP (Ideal Customer Profile) - role, revenue, pains with severity, customer trust signals, buying triggers, and the exact customer quote that becomes marketing copy. Triggers on "build my ICP", "define my ideal customer", "sharpen my targeting", "I'm preparing for 10X With AI Bootcamp Week 1". Output gets pinned to AI Sales + Marketing Executives so all outreach hits the right person with the right language.
---

# ICP Precision Builder

A guided 7-question interactive build of the user's Ideal Customer Profile. Replaces vague targeting ("small business owners") with surgical precision ("Founders of B2B services firms · €500K-2M revenue · in Amsterdam · who tried 2 marketing agencies that failed").

## Triggers

- "Build my ICP"
- "Define my ideal customer"
- "Sharpen my targeting"
- "Who's my actual customer?"
- "Why isn't my outreach converting?"
- "I'm preparing for 10X With AI Bootcamp Week 1"

## The 7 ICP Questions

### Q1 · ROLE + REVENUE + SIZE
> *"Your ideal customer is: [role title] · in a [industry] business · doing [€/$X-Y revenue] · with [N people on team]. Fill in each bracket."*

### Q2 · DAY-IN-THE-LIFE
> *"Walk me through their Monday morning · 6am to 12pm. What do they do? What are they avoiding? What's stressing them?"*

This question is GOLD. The day-in-the-life answer becomes the empathy core for every AI Employee output.

### Q3 · TOP 3 PAINS (with severity score)
> *"What 3 problems do they wake up thinking about? Rank by pain level:*
> *- 8-10 = on fire · they'd pay anything to fix*
> *- 5-7 = annoying · they'd pay if convenient*
> *- 1-4 = nice to fix · not buying"*

We only sell to 8-10 pains. Anything else is education · not selling.

### Q4 · WHAT THEY'VE TRIED (and why it failed)
> *"What 3-5 solutions have they tried that DIDN'T work? Be specific.*
> *- Names of tools they bought*
> *- Names of agencies they hired*
> *- Specific approaches they attempted*
> *- WHY each one failed (in their words if possible)"*

### Q5 · WHO THEY TRUST
> *"Who do they listen to? 3-5 specific people · podcasts · publications · communities."*

### Q6 · BUYING TRIGGER
> *"What SPECIFICALLY has to happen for them to buy?*
> *- A revenue threshold? ('once we hit €1M')*
> *- A failure? ('after the third agency failed')*
> *- A peer success? ('competitor X is using it')*
> *- A deadline? ('Q1 starts in 30 days')*
>
> *Be precise. Most owners are vague here. Don't be."*

### Q7 · THE ONE CUSTOMER QUOTE
> *"Give me the EXACT WORDS one of your customers said about their problem · their language · not yours.*
>
> *If you've never asked them · go ask one right now and come back."*

That quote becomes the headline of all your marketing. **Permanent.**

## Output

The skill generates:

1. `~/10x-with-ai/templates/ICP.md` (markdown · Claude reads)
2. `~/10x-with-ai/templates/icp-card.html` (visual · printable · shareable)

## Auto-pinning

The ICP.md auto-pins to:
- AI Sales Executive Project (for outreach targeting)
- AI Marketing Executive Project (for content targeting)
- AI Operations Executive Project (for customer support tone)
- AI CEO Brain Project (for strategic decisions)

## The 8-10 Pain Filter

After Q3 · if the user's pains are all in the 5-7 range · the skill says:

> *"Heads up · all your pain scores are 5-7. That means you can EDUCATE this audience but probably can't SELL to them.*
>
> *Want to refine the ICP to someone whose pain is 8-10? Type YES.*
> *Or proceed with the current ICP · accepting longer sales cycles. Type NO."*

This forces ICP clarity. Most owners don't realize their "ideal customer" doesn't have a buying-level pain.

## Quality Floor

- [ ] Q1 has actual numbers (not "small businesses")
- [ ] Q3 has at least one 8-10 pain (or the user accepted the education-only path)
- [ ] Q4 has 3-5 specific failures (not generic "they've tried marketing")
- [ ] Q7 is a REAL quote (not the user's words sanitized)

## When in the cohort

**Bootcamp Week 1 · Day 4 · Hour 3 (90 min)**

Right after Brand Foundation. By end of Hour 3:
- Brand is locked
- ICP is precision-tuned
- AI Marketing Employee writes for THIS person
- AI Sales Employee targets THIS person

Then Hour 4 is the Sales Executive build · which uses both.

## Skill behavior notes

- **Probe the day-in-the-life answer.** If they give 1 sentence · ask 3 follow-ups.
- **Push back on vague pains.** "Time is tight" is not a pain · "Sundays gone working" is.
- **Reject 5-7 pains as primary.** Force them to find an 8-10 pain.
- **Surface the customer quote relentlessly.** If they haven't asked one · pause and have them message one.

## Companion files

- `prompts/synthesis-prompt.md` · how to compile the ICP doc
- `icp-card-template.html` · visual output using shared components

---

Skill version: 1.0.0
Author: Daniel Paul · Purely Personal
For: 10X With AI Cohort · Bootcamp Week 1
Pairs with: brand-foundation-builder · voice-profile-builder · business-brain-builder
