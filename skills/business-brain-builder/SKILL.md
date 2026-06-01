---
name: business-brain-builder
description: An interactive 15-section build that creates the user's BUSINESS-BRAIN.md - the master context document every AI Employee reads. Triggers on "build my business brain", "set up my business context", "complete my business profile", "I'm preparing for 10X With AI cohort". Asks 2-3 questions per section, validates answers, generates a structured markdown file that pins to every Claude Project. This is the foundational document that makes Claude understand YOUR business, ICP, offer, and goals.
---

# Business Brain Builder

A guided 15-section interactive build that creates the user's **BUSINESS-BRAIN.md** - the master context file every AI Employee references on every task.

## When to trigger

- "Build my business brain"
- "Set up my business context"
- "Help me complete my business profile"
- "I'm preparing for 10X With AI Day 2"
- "Why does AI not understand my business?"
- "Onboard me to the cohort"

## The 15 Sections

This skill walks the user through these 15 sections (matching `BUSINESS-BRAIN.md` template):

```
01. WHO I AM                  · name · role · Ikigai sentence (pull from Ikigai skill)
02. MY BUSINESS               · what I sell · how I make money · stage · streams
03. MY IDEAL CUSTOMER (ICP)   · who they are · what they want · what they fear
04. MY OFFER                  · pricing · what's included · differentiator · transformation
05. MY VOICE DNA              · pull from Voice Profile skill (link · don't re-ask)
06. MY COMPETITORS            · top 5 · stronger vs weaker · gap I exploit
07. MY BRAND                  · colors · fonts · vibe · 3 adjectives
08. MY GOALS                  · 30-day · 90-day · Tuesday-morning vision
09. MY 21-DAY COHORT COMMITMENT · Employee #1 pick · public commitment
10. MY TOOL STACK             · current tools · what I'm adding
11. MY CONTENT STRATEGY       · where I publish · performance · struggles
12. MY SALES PROCESS          · how leads find me · how I convert · friction
13. MY OPERATIONS             · weekly workflows · the one I hate · SOPs status
14. MY FINANCES               · revenue patterns · expenses · cashflow stress
15. NOTES + UPDATES           · last updated · cohort milestones · open questions
```

## Interactive Flow

### Phase 1 · CHECK PREREQUISITES (15 sec)

Claude asks:

> *"Before we build your Business Brain · let me check what you've already done:*
>
> *1. Have you completed the Ikigai Discovery skill? (Yes/No)*
> *2. Have you extracted your Voice DNA? (Yes/No)*
>
> *If yes · I'll pull from those. If no · we'll capture briefly here · then you can refine later with those skills."*

### Phase 2 · WALK THE 15 SECTIONS (45-60 min total)

For each section · Claude:

1. **Introduces the section** (1 sentence why it matters)
2. **Asks 2-3 targeted questions**
3. **Captures the answers**
4. **Reflects back what was said** (1 sentence)
5. **Moves to next section**

### Phase 3 · SYNTHESIS + GENERATION (60 sec)

After Section 15 · Claude:

1. Generates the complete `BUSINESS-BRAIN.md` file
2. Saves to: `~/10x-with-ai/templates/BUSINESS-BRAIN.md`
3. Generates a visual HTML summary `business-brain-discovery.html` (same component library as Ikigai)
4. Pins the markdown to all 5 Claude Projects (Marketing · Sales · Operations · Finance · CEO Brain)

## Sample Questions Per Section

### SECTION 1 · WHO I AM (3 questions)

1. "Your full name · and what people call you in business contexts?"
2. "Your business name · and your role in it (Founder / CEO / Solopreneur / other)?"
3. "Your Ikigai sentence · or if you don't have one yet · what's the ONE thing you're trying to build?"

### SECTION 2 · MY BUSINESS (3 questions)

4. "What do you sell · in plain language · no jargon?"
5. "How do you make money · pick the closest: coaching · productized service · SaaS · digital product · physical product · course · other?"
6. "Annual revenue range · years in business · team size · current profit margin estimate?"

### SECTION 3 · MY IDEAL CUSTOMER (4 questions)

7. "Describe your ideal customer in one sentence: role · revenue · industry · location · team size."
8. "What's the #1 thing they want? · what's the #1 thing they fear?"
9. "What have they tried that DIDN'T work? · 3-5 things."
10. "What's the exact quote a customer of yours has said about their problem? · their words · not yours."

### SECTION 4 · MY OFFER (3 questions)

11. "What do you sell in 1 sentence? · 'I help [customer] [outcome] in [timeframe]'."
12. "Your price points · entry / core / premium?"
13. "What makes you different from competitors? · be specific · not 'I care more'."

### SECTION 5 · MY VOICE DNA

14. "Did you complete the Voice Profile skill? · if yes · I'll pull from your `voice-dna.md`. If no · type 3 signature phrases of yours right now."

### SECTION 6 · MY COMPETITORS (2 questions)

15. "Your top 5 direct competitors · name + URL each."
16. "Where are they STRONGER than you? Where are you STRONGER than them? (Be honest.)"

### SECTION 7 · MY BRAND (3 questions)

17. "Your brand colors · primary + accent (hex if you have them · 'red and white' is fine)."
18. "3 adjectives that describe your brand voice?"
19. "Your brand vibe in 1 sentence · 'like a smart friend at 11pm' or 'like a strategic advisor'?"

### SECTION 8 · MY GOALS (3 questions)

20. "Revenue target in 30 days?"
21. "Revenue target in 90 days?"
22. "Describe your Tuesday morning in 90 days · be specific · what time wake up · what's done · what's left?"

### SECTION 9 · MY 21-DAY COHORT COMMITMENT (2 questions)

23. "Did you complete the Ikigai skill? · if yes · I'll use your Employee #1 pick. If no · which AI Employee do you want to build FIRST: Marketing · Sales · Operations · Finance · or CEO Brain?"
24. "Your public 21-day commitment · format: 'By August 11 · I will have [Employee] running so that [outcome]'."

### SECTION 10 · MY TOOL STACK (1 question · checkboxes)

25. "Which of these do you currently use? · email · CRM · calendar · scheduler · Stripe · website · file storage · other?"

### SECTION 11 · MY CONTENT STRATEGY (2 questions)

26. "Where do you publish + how often? · platform + posts per week."
27. "Your current content performance · 30-day stats + biggest struggle?"

### SECTION 12 · MY SALES PROCESS (2 questions)

28. "How leads find you today · top 3 sources?"
29. "Your current close rate + biggest sales friction?"

### SECTION 13 · MY OPERATIONS (2 questions)

30. "3 weekly recurring workflows + time each takes you?"
31. "The ONE workflow you most hate doing? · this becomes your highest-leverage automation."

### SECTION 14 · MY FINANCES (2 questions)

32. "Best month last year · worst month last year? · numbers + which month?"
33. "Your cashflow stress level 1-10 · biggest financial question right now?"

### SECTION 15 · NOTES + COHORT MILESTONES (auto-populated)

34. "Anything specific you want Claude to remember about you? · open answer."

## Phase 4 · GENERATE THE OUTPUT

After 34 questions answered:

1. **Generate `BUSINESS-BRAIN.md`** · structured markdown · 15 sections filled
2. **Generate `business-brain-summary.html`** · visual summary of who they are
3. **Pin both to all 5 Claude Projects**
4. **Show the user where everything saved**

## Phase 5 · CONFIRM PIN

Claude says:

> *"Your Business Brain is built · 15 sections complete. I've saved it to:*
>
> *- `~/10x-with-ai/templates/BUSINESS-BRAIN.md` (Claude reads this)*
> *- `~/10x-with-ai/templates/business-brain-summary.html` (you read this)*
>
> *I've also pinned it to all 5 Claude Project starters (Marketing · Sales · Ops · Finance · CEO Brain). Every AI Employee now knows your business.*
>
> *Update this anytime by saying 'update my business brain'."*

## Quality Floor

- [ ] Every section has at least 2 sentences of real content (no blank fields)
- [ ] ICP has a real customer quote (not a paraphrase)
- [ ] Tuesday morning vision is specific (with times)
- [ ] Cohort commitment matches Ikigai Employee #1 pick (if completed)
- [ ] All 5 Claude Projects show the BUSINESS-BRAIN.md in their pinned context

## Skill Behavior Notes

- **Pull from prior skills.** Ikigai answers + Voice DNA should auto-populate where possible.
- **Don't repeat questions.** If they already answered something in Ikigai · use that answer.
- **Encourage updates.** This isn't a one-time fill · it's a living document.
- **Save state.** If they pause at Section 7 · they can resume by saying *"continue my business brain."*

## Integration with the 10X With AI Cohort

**Day 2 of cohort:** Run the Voice Profile skill first · then this skill (second half of Day 2).

By end of Day 2 · every student has:
- ✅ Ikigai Discovery HTML (from Day 1)
- ✅ Voice DNA Profile (from Day 2 morning)
- ✅ Business Brain Markdown + HTML summary (from Day 2 afternoon)

All 3 pinned to their 5 Claude Projects. **The foundation is set.**

Then Bootcamp Week 1 (July 24) builds Marketing + Sales Executives ON TOP of this foundation.

## Companion Files

- `prompts/synthesis-prompt.md` · the synthesis logic for the markdown generation
- `business-brain-template.md` · the markdown structure
- `business-brain-summary.html` · the visual summary template

---

Skill version: 1.0.0
Author: Daniel Paul · Purely Personal
For: 10X With AI Cohort · July 2026
Pairs with: ikigai-discovery-journey · voice-profile-builder
