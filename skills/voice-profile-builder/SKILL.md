---
name: voice-profile-builder
description: Walks the user through 16 calibration questions to extract their Voice DNA - signature phrases, tone, sentence patterns, rejection patterns, and writing fingerprint. Triggers on "extract my voice", "find my voice DNA", "build my voice profile", "I'm preparing for 10X With AI Day 2", "make AI sound like me". Outputs a stunning visual JSX page that becomes the always-on context for every AI Employee. This is the foundational skill that makes Claude write in YOUR voice instead of generic AI-speak. Day 2 of 10X With AI cohort.
---

# Voice Profile Builder

A guided 16-question interactive journey that extracts the user's **Voice DNA** - the patterns, signatures, and rejection patterns that make their writing UNIQUELY theirs. The final output becomes pinned context for every AI Employee.

## When to trigger this skill

- "Extract my voice DNA"
- "Build my voice profile"
- "Find my writing voice"
- "Make AI sound like me"
- "I'm preparing for 10X With AI Day 2"
- "Why does my AI content sound generic?"

## What this skill does

1. **Asks for content samples** (LinkedIn URL · pasted posts · or recent writing)
2. **Auto-analyzes their content** to surface patterns
3. **Walks them through 16 calibration questions** to refine and confirm
4. **Synthesizes their Voice DNA Profile** - signatures + rejections
5. **Generates a stunning visual JSX page** they pin to every Claude Project
6. **Saves the profile** as both HTML (shareable) and Markdown (machine-readable)

## The 4 Sections · 16 Calibration Questions

### SECTION 1 · ORIGIN VOICE (where your voice comes from)

1. "What's the first piece of content you ever shared that got real engagement? What was different about it?"
2. "Whose writing voice influenced yours the most? (Author / creator / friend / parent)"
3. "What's a phrase only YOU would say? · something that's signature to you"
4. "What's a phrase you'd NEVER say · because it feels fake?"

### SECTION 2 · AUDIENCE TUNING (who you write to)

5. "Who do you imagine you're writing to? Describe one specific person."
6. "What's the moment in their day when they read you? (Morning coffee · lunch · 11pm scrolling)"
7. "What do they NEED to hear from you that nobody else is saying?"
8. "What do they refuse to hear from ANY corporate / sanitized voice?"

### SECTION 3 · VOICE SIGNATURES (your patterns)

9. "What 3 topics do you find yourself returning to in your content?"
10. "What's your sentence rhythm? · short bursts · long flowing · mixed · question-heavy?"
11. "What punctuation do you overuse? (Em-dashes · ellipses · single-line breaks · all-caps · etc.)"
12. "What words do you reach for too often when you're tired?"

### SECTION 4 · REJECTION PATTERNS (what you refuse)

13. "What corporate speak makes you cringe? · the exact words"
14. "What 3 clichés will you refuse to use even when AI suggests them?"
15. "What feels 'too AI' about most AI-generated writing? · be specific"
16. "When you read AI-generated content · what's the test that tells you 'this is mine' vs 'this isn't'?"

## Interactive Flow

### Phase 1 · CONTENT INTAKE (60 sec)

Claude asks:

> *"Before I ask the 16 calibration questions · I need 30 minutes of your existing voice. Pick ONE:*
>
> *1. Paste your LinkedIn URL · I'll scrape 30 posts*
> *2. Paste 5-10 of your best pieces of content directly*
> *3. Type 200 words of your most authentic writing right now*
>
> *Which do you want to do?"*

Wait for input. Capture content.

### Phase 2 · AUTO-ANALYSIS (30 sec)

Claude analyzes the content silently and surfaces initial patterns:

- 5 candidate signature phrases (extracted)
- 3 candidate topics (extracted)
- Rhythm pattern (auto-detected)
- Punctuation tells (auto-detected)
- Tone (auto-classified)

Then Claude says:

> *"I've read [N] pieces of your writing. Here's what I'm seeing as your voice patterns. Now I'll ask 16 questions to refine and confirm. Ready?"*

### Phase 3 · THE 16 QUESTIONS (10 min)

One section at a time. Same Blair Singer pattern as the Ikigai skill - partner reflection optional.

Between sections · Claude reflects back what they've shared:

> *"Section 1 complete. I'm hearing your voice is rooted in [pattern]. Continue?"*

### Phase 4 · SYNTHESIS (Claude does the work · 60 sec)

After all 16 answers · Claude generates:

**1. Voice DNA Statement (1 paragraph)**
> *"Your voice is [tone descriptor]. You write like a [persona/archetype]. Your reader feels [emotion]. You're allergic to [rejection pattern]."*

**2. The 5 Signature Phrases (extracted + confirmed)**
Each one with: where it shows up · why it works · how to use it

**3. The 3 Rhythm Patterns**
- Short-burst usage
- Long flowing usage
- Mixed dynamics

**4. The Rejection List**
- Words they refuse
- Phrases that feel corporate
- The "this is AI" tells they avoid

**5. The Voice Test (1 sentence)**
> *"If [criteria] · it's mine. If [opposite] · throw it out."*

**6. The 5 Topics They Own**
Ranked by engagement signal in their existing content.

### Phase 5 · ASK FOR AESTHETIC (5 sec)

Same 3 styles as Ikigai · pick one:
- **Soft** · editorial · warm cream
- **Noir** · black + electric red
- **Blueprint** · clean white + cobalt

### Phase 6 · GENERATE OUTPUT (15 sec)

Claude generates `voice-profile-discovery.html` using the same component library as the Ikigai skill:

- Hero: "Your Voice DNA · Discovered [date]"
- Voice DNA statement (Text Generate Effect)
- 5 Signature Phrases (Bento Grid)
- 3 Rhythm Patterns (cards with examples)
- Rejection List (dark section with strikethroughs)
- Voice Test (giant serif quote · center stage)
- 5 Topics (Number Tickers with engagement data)
- Share section + print

Saves to: `~/10x-with-ai/templates/my-voice-profile.html`

ALSO generates `~/10x-with-ai/voice-dna.md` (a markdown version Claude can read directly · pinned to every Claude Project).

## Quality Floor

Every Voice Profile must:
- [ ] Use the user's ACTUAL phrases (not generic substitutes)
- [ ] Reference specific lines from their content
- [ ] Identify at least 3 unique rejection patterns
- [ ] Provide a Voice Test that's actually testable
- [ ] Generate output that reads as THEM · not a coaching report

## Skill Behavior Notes

- **Don't sanitize.** If they curse · keep it. If they ramble · note the ramble. Their patterns ARE the data.
- **Reference earlier answers.** Build the profile cumulatively · show you're listening.
- **Surface contradictions.** If Section 1 said "playful" but Section 3 said "serious topics" · note the duality (it's gold).
- **Encourage specificity.** A 1-word answer gets a probe: *"Give me 3 more words."*

## Integration with the 10X With AI Cohort

This skill runs on **Day 2** of the cohort (after Ikigai Discovery on Day 1).

The output becomes:
1. The `voice-dna.md` pinned to every Claude Project (Marketing · Sales · Ops · Finance · CEO Brain)
2. The reference for the AI Marketing Executive
3. The "test file" Claude uses to reject AI-slop output
4. The shareable artifact (HTML page · printable)

## Companion Files

- `prompts/synthesis-prompt.md` · the synthesis logic
- `voice-profile-template.html` · the HTML output template (same component library as Ikigai)
- `references/voice-patterns.md` · common voice archetypes for inspiration

## Sample Triggers (cohort-specific)

- "I'm a 10X With AI cohort member · Day 2 prep"
- "Show me my voice DNA"
- "Build my voice profile from my LinkedIn"
- "Why does my AI content sound like everyone else's?"

---

Skill version: 1.0.0
Author: Daniel Paul · Purely Personal
For: 10X With AI Cohort · July 2026
Pairs with: ikigai-discovery-journey · business-brain-builder
