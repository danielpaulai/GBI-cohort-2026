# Ikigai Discovery Journey

A guided 16-question interactive journey that helps the user discover their Ikigai (Japanese: "reason for being"). At the end · synthesizes their answers into a personal Ikigai statement · identifies their unique overlap zones · and generates 3 monetization paths. Outputs as a stunning interactive HTML/JSX page.

## When to use this skill

Trigger this skill when the user:
- Says "find my ikigai" / "do the ikigai exercise" / "ikigai worksheet"
- Asks "why am I doing what I'm doing" / "what's my purpose"
- Mentions "10X With AI" Day 1 prep
- Wants to map their passion · skill · world need · monetization
- Is a 10X With AI cohort student preparing for their first session

## What this skill does

1. **Welcomes the user** with the Ikigai framework (4 circles)
2. **Walks them through 16 questions** (4 per circle · one at a time)
3. **Synthesizes their answers** using Claude's reasoning
4. **Returns a stunning JSX output** containing:
   - Their personalized Ikigai diagram (with their answers filled in)
   - Their Ikigai sentence (1-sentence purpose statement)
   - 3 monetization paths tailored to them
   - 3 immediate next steps
   - 3 AI Employee picks (Marketing · Sales · Ops · Finance · CEO Brain) most aligned with their Ikigai
5. **Saves the output** locally (HTML file · printable + interactive)

## The Interactive Flow

### Phase 1 · WELCOME (30 seconds)

When triggered · Claude says:

> *"Welcome to your Ikigai discovery journey. In the next 10 minutes · I'll ask you 16 questions across 4 categories: what you LOVE · what you're GOOD AT · what the WORLD NEEDS · and what you can be PAID FOR.*
>
> *At the end · I'll synthesize your answers into:*
> *- Your Ikigai sentence*
> *- 3 ways to monetize it*
> *- 3 AI Employees that align with it*
>
> *Ready? Type YES to begin · or NO to come back later."*

### Phase 2 · THE 4 SECTIONS · 16 QUESTIONS

For each section · Claude asks ONE question at a time. Waits for response. Encourages depth.

**SECTION 1 · What You LOVE**

1. "What did you do as a kid for HOURS · without getting paid? Be specific."
2. "What activity makes TIME DISAPPEAR when you're doing it?"
3. "If money were no object · what would you actually do with your weeks?"
4. "Name 3 topics you could talk about for 60 minutes without prep."

**SECTION 2 · What You're GOOD AT**

5. "What do people compliment you on · repeatedly?"
6. "What do colleagues or friends ask you for help with?"
7. "What's a skill you have that others find HARD?"
8. "What's your unfair advantage — the thing that's just EASIER for you than for most?"

**SECTION 3 · What the WORLD NEEDS**

9. "What's a problem in your industry that genuinely makes you ANGRY?"
10. "Who do you see suffering with NO good solution available?"
11. "What's BROKEN in your market that hasn't been fixed?"
12. "Where do you see the BIGGEST opportunity in the next 3 years?"

**SECTION 4 · What You Can Be PAID FOR**

13. "What are people already BUYING in your space?"
14. "What's your current business model — how does money come in?"
15. "What adjacent products or services could you sell?"
16. "What premium price point have you NOT tested yet?"

### Phase 3 · CHECK-IN (between sections)

After each section of 4 questions · Claude pauses:

> *"Section [X] complete. Take a breath. Anything you want to add or change before we move on?"*

If yes · they update. If no · continue.

### Phase 4 · SYNTHESIS

Claude analyzes all 16 answers:

1. **Identify Pattern Overlaps**
   - Where LOVE + GOOD AT intersect → Passion
   - Where GOOD AT + PAID FOR intersect → Profession
   - Where WORLD NEEDS + PAID FOR intersect → Vocation
   - Where LOVE + WORLD NEEDS intersect → Mission
   - All 4 → IKIGAI

2. **Write the Ikigai Sentence**
   Format: *"I [verb] [for whom] · so they [outcome] · in a way that [unique style]."*

3. **Suggest 3 Monetization Paths**
   - Path 1: Highest probability · uses what they already do
   - Path 2: Highest ceiling · biggest market opportunity
   - Path 3: Most aligned with deepest values

4. **Suggest 3 Immediate Next Steps**
   - One they can do TODAY
   - One they can do THIS WEEK
   - One they can do THIS MONTH

5. **Pick 3 AI Employees** (from the 10X With AI cohort framework)
   - Marketing Executive
   - Sales Executive
   - Operations Executive
   - Finance Executive
   - CEO Brain
   - Rank top 3 by Ikigai alignment

### Phase 5 · GENERATE OUTPUT

Claude generates a standalone HTML file using:
- **Tailwind CSS** (via CDN)
- **React** (via CDN)
- **shadcn/ui-inspired components**
- **Lucide icons**
- **Framer Motion** for animations (via CDN)

The output is a single `ikigai-discovery.html` file the user can:
- Open in browser instantly
- Print to PDF
- Share with their accountability partner

## Output Template Structure

The generated HTML follows this structure:

```jsx
<IkigaiPage>
  <Hero>
    <Title>Your Ikigai Discovery</Title>
    <Subtitle>{user.name} · {date}</Subtitle>
  </Hero>

  <IkigaiSentence>
    <p className="text-3xl italic font-serif">
      "{generated_ikigai_sentence}"
    </p>
  </IkigaiSentence>

  <IkigaiDiagram>
    {/* Interactive 4-circle SVG with user's answers in each circle */}
    <Circle label="LOVE">{user.love_answers}</Circle>
    <Circle label="GOOD AT">{user.good_at_answers}</Circle>
    <Circle label="WORLD NEEDS">{user.world_needs_answers}</Circle>
    <Circle label="PAID FOR">{user.paid_for_answers}</Circle>
    <CenterOverlap>YOUR IKIGAI</CenterOverlap>
  </IkigaiDiagram>

  <PatternOverlaps>
    <Pattern type="passion">Where LOVE + GOOD AT overlap</Pattern>
    <Pattern type="mission">Where LOVE + WORLD NEEDS overlap</Pattern>
    <Pattern type="vocation">Where WORLD NEEDS + PAID FOR overlap</Pattern>
    <Pattern type="profession">Where GOOD AT + PAID FOR overlap</Pattern>
  </PatternOverlaps>

  <MonetizationPaths>
    <Path number={1} title="Highest Probability">...</Path>
    <Path number={2} title="Highest Ceiling">...</Path>
    <Path number={3} title="Most Aligned">...</Path>
  </MonetizationPaths>

  <NextSteps>
    <Step when="TODAY">...</Step>
    <Step when="THIS WEEK">...</Step>
    <Step when="THIS MONTH">...</Step>
  </NextSteps>

  <AIEmployeePicks>
    <Employee rank={1}>...</Employee>
    <Employee rank={2}>...</Employee>
    <Employee rank={3}>...</Employee>
  </AIEmployeePicks>

  <ShareSection>
    <PrintButton />
    <DownloadPDF />
    <ShareURL />
  </ShareSection>
</IkigaiPage>
```

## Visual Design Principles

When generating the HTML/JSX · follow these rules:

- **Color palette:** Black `#0E0E10` text · red accent `#E90D41` · warm off-white `#FAFAF8` background
- **Typography:** Sans-serif for body (Inter) · serif italic for the Ikigai sentence (large · poetic)
- **Animations:** Subtle fade-in on scroll · interactive hover states on circles · smooth transitions
- **Layout:** Single-page · scrollable · mobile-responsive
- **Tone:** Premium · editorial · NOT tech-bro · NOT corporate
- **Inspired by:** New York Times feature · Apple keynote slide · personal coach output

## Quality Floor

Every Ikigai output must:
- [ ] Reference the user's SPECIFIC answers (not generic platitudes)
- [ ] Have an Ikigai sentence that genuinely synthesizes their data
- [ ] Suggest monetization paths grounded in what they actually do
- [ ] Include their name + date
- [ ] Be visually stunning · "wow" reaction expected
- [ ] Open in any browser without dependencies

## Skill Behavior Notes

- **Don't rush** the questions. Encourage long answers. If a user gives a 1-word answer · gently probe deeper.
- **Don't sanitize** their responses. Their actual language is what makes the Ikigai theirs.
- **Save state** between questions. If they pause · they can resume by saying "continue my Ikigai."
- **Reference back** to earlier answers when appropriate. Show you're listening.
- **Celebrate completion.** When they finish all 16 questions · acknowledge the work.

## Integration with 10X With AI Cohort

This skill is the FIRST thing cohort students run on Day 1 (homework before their first live session). Their output:
- Lives in their `~/10x-with-ai/templates/ikigai-discovery.html` after install
- Becomes the FOUNDATION for their Business Brain (Day 2)
- Powers their Voice DNA conversation (also Day 2)
- Determines which AI Employee they build FIRST (Day 4)

## Example Trigger Phrases

The skill activates on:
- "Let's do my Ikigai"
- "Help me find my Ikigai"
- "Start the Ikigai worksheet"
- "I'm preparing for 10X With AI Day 1"
- "What should I build my AI Employees around?"
- "I want clarity on my business purpose"

## Maintenance

This SKILL.md is the source of truth. The output template (`ikigai-template.html`) lives in the same folder. The Claude-side prompts live in `prompts/`.

When updating:
1. Test with 3 different personas (coach · ecommerce · consultant)
2. Verify all 16 questions still feel natural
3. Confirm the output renders correctly in Chrome · Safari · Firefox

---

Skill version: 1.0.0
Author: Daniel Paul · Purely Personal
For: 10X With AI Cohort · July 2026
Companion to: BUSINESS-BRAIN.md · VOICE-PROFILE-prompt.md
