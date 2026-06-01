---
name: 30-day-challenge-builder
description: Builds a launch-ready 30-Day Challenge tied to the user's Ikigai + ICP. Triggers on "build my 30 day challenge", "plan my public launch", "design my visibility campaign", "I'm preparing for 10X With AI Day 18". Generates the challenge name, daily deliverable, AI Employee setup, success metrics, launch sequence, and 30 days of pre-written content. Output is the public moment that creates social proof for cohort #2.
---

# 30-Day Challenge Builder

The cohort's public moment. After 21 days of building · students launch a 30-Day Challenge that creates social proof · drives leads · and provides case study material for cohort #2.

## Triggers

- "Build my 30-day challenge"
- "Plan my public launch"
- "Design my visibility campaign"
- "I'm preparing for 10X With AI Day 18"
- "How do I launch what I just built?"

## The 30-Day Challenge Framework

The Challenge has 5 elements:

1. **A specific transformation** ("30 days · 30 [outcomes]")
2. **A daily deliverable** (one thing published / done per day)
3. **AI Employee setup** (which Employees do what)
4. **Success metrics** (measured on Day 31)
5. **Public commitment** (where they ship daily)

## The Build Flow (8 questions · 20 min)

### Q1 · YOUR CHALLENGE OUTCOME

> *"Format: '30 days · 30 [outcomes] · [your voice angle].'*
>
> *Examples:*
> *- 'Marketing consultant: 30 days · 30 case studies · 30 LinkedIn posts'*
> *- 'F&B brand: 30 days · 30 menu experiments · daily customer feedback'*
> *- 'SaaS founder: 30 days · 30 user interviews · 30 product iterations'*
> *- 'Coach: 30 days · 30 client transformations · documented daily'*
>
> *What's YOUR Challenge?"*

### Q2 · TIE TO IKIGAI

> *"How does this Challenge align with your Ikigai sentence?*
> *(Pull your Ikigai from your Claude Project · auto-show it here.)"*

If misaligned · push back: *"This Challenge might be ambitious · but it's not aligned with YOUR Ikigai. Reconsider · or commit anyway?"*

### Q3 · TIE TO ICP PAIN

> *"Which of your ICP's 8-10 pains does this Challenge address publicly?*
> *(Pull from ICP.md.)"*

### Q4 · DAILY DELIVERABLE

> *"Every day for 30 days · you publish ONE specific thing. What is it?*
> *- A LinkedIn post?*
> *- A 60-sec video?*
> *- A case study?*
> *- An email to your list?*
> *- A YouTube video?*
> *- A combination?"*

### Q5 · AI EMPLOYEE SETUP

> *"Which AI Employees do the work? Map them:*
> *- Marketing Employee writes: [content type · per day]*
> *- Sales Employee outreaches: [N prospects · daily]*
> *- Operations Employee handles: [task]*
> *- Finance Employee tracks: [metric]*
> *- CEO Brain reviews: [check-in cadence]*
>
> *Which Employee runs which part?"*

### Q6 · SUCCESS METRICS

> *"What measurable outcomes are you tracking?*
> *Set baseline on Day 1 · measure on Day 31.*
>
> *Examples (pick 5-7):*
> *- Posts published: X / 30*
> *- DMs sent: X*
> *- Replies received: X*
> *- Calls booked: X*
> *- Closed deals: X*
> *- Revenue generated: €X*
> *- Followers gained: X*
> *- Newsletter sign-ups: X"*

### Q7 · LAUNCH POST (Day 1)

> *"Your Day 1 launch post. Your AI Marketing Employee should draft this · or write it yourself.*
>
> *Format options:*
> *- 'For the next 30 days · I'm doing [Challenge]. Why? [Reason tied to Ikigai].'*
> *- 'Today I start a 30-day experiment. By Day 30 I'll know [outcome]. Follow along.'"*

### Q8 · PUBLIC ACCOUNTABILITY

> *"Where do you ship daily?*
> *- LinkedIn (recommended for visibility)*
> *- Cohort WhatsApp (for accountability)*
> *- Your email list (for nurture)*
> *- Twitter / X (for additional reach)*
>
> *Pick at least 2."*

## Output

The skill generates 3 files:

1. `~/10x-with-ai/templates/30-DAY-CHALLENGE.md` (your complete plan)
2. `~/10x-with-ai/my-work/challenge-launch-post.md` (Day 1 launch content)
3. `~/10x-with-ai/my-work/challenge-content-queue.md` (30 days of suggested content topics · AI Marketing Employee fills daily)

## When in the cohort

**Day 18 · Bootcamp Week 3 · Hour 4 add-on (60 min)**

After CEO Brain build · students design their 30-Day Challenge.

**Day 19 · Final Certification:**
Each student publicly commits to their Challenge.
30-Day Challenge LAUNCHES on Aug 11 · the Monday after cohort ends.

**Day 19 to Sep 10:**
- Daily ships in cohort WhatsApp
- Daniel + team monitor + celebrate
- Day 31 (Sep 10) · reflection + case study generation

## The 30-Day Cohort Cohesion

ALL 25 cohort members run their Challenges in parallel.
Cohort WhatsApp becomes a live ship-stream.
Peer accountability is automatic.

By Day 60 (Oct 10) · the cohort has produced:
- ~750 pieces of public content (25 students × 30 days)
- ~250 case studies / customer interactions
- Massive social proof for cohort #2 launch

## Quality Floor

- [ ] Challenge is publicly testable (someone could verify by Day 31)
- [ ] Daily deliverable is specific (not "I'll post regularly")
- [ ] At least 5 success metrics defined
- [ ] AI Employee setup is concrete (not "AI will help")
- [ ] Launch post is drafted (not just planned)

## Skill behavior notes

- **Pull from Ikigai + ICP automatically.** Don't re-ask.
- **Force specificity on daily deliverable.** "Post regularly" → "Post 1 LinkedIn carousel + 1 X thread + 1 newsletter section per day."
- **Push for measurable success metrics.** Vibes ≠ metrics.
- **Celebrate the commitment.** When they finish · BIG energy.

## Companion files

- `prompts/synthesis-prompt.md` · how to compile the challenge doc
- `challenge-card-template.html` · visual launch graphic

## Integration with Alumni Track

If the user upgrades to Alumni Track post-cohort:
- Their Challenge results are featured in alumni showcase
- Their content becomes case study material for cohort #2 marketing
- They get featured in monthly group call

This is how cohort #1 becomes cohort #2's social proof engine.

---

Skill version: 1.0.0
Author: Daniel Paul · Purely Personal
For: 10X With AI Cohort · Bootcamp Week 3 · Day 18
Pairs with: ikigai-discovery-journey · icp-precision-builder · brand-foundation-builder · voice-profile-builder · business-brain-builder
