# Ikigai Synthesis Prompt
## Use AFTER the user has answered all 16 questions

You have just walked the user through 16 questions across the 4 Ikigai circles. Now synthesize their answers into a personalized output.

## Their 16 Answers

[INSERT THE USER'S 16 ANSWERS HERE · grouped by section]

**SECTION 1 · LOVE:**
1. {answer_1}
2. {answer_2}
3. {answer_3}
4. {answer_4}

**SECTION 2 · GOOD AT:**
5. {answer_5}
6. {answer_6}
7. {answer_7}
8. {answer_8}

**SECTION 3 · WORLD NEEDS:**
9. {answer_9}
10. {answer_10}
11. {answer_11}
12. {answer_12}

**SECTION 4 · PAID FOR:**
13. {answer_13}
14. {answer_14}
15. {answer_15}
16. {answer_16}

---

## Your Task

Generate 5 outputs · in this exact order:

### 1. THE IKIGAI SENTENCE (1 sentence)

Format: *"I [VERB] [FOR WHOM] · so they [OUTCOME] · in a way that [UNIQUE STYLE]."*

Rules:
- 25 words maximum
- Use the user's actual words where possible
- Make it sound like THEM · not generic coaching-speak
- The sentence should make them feel SEEN

### 2. THE 4 PATTERN OVERLAPS

Identify how their answers connect across circles:

**Passion (LOVE + GOOD AT):**
- 1-sentence observation specific to their data

**Mission (LOVE + WORLD NEEDS):**
- 1-sentence observation specific to their data

**Vocation (WORLD NEEDS + PAID FOR):**
- 1-sentence observation specific to their data

**Profession (GOOD AT + PAID FOR):**
- 1-sentence observation specific to their data

For each · note if they're currently OPERATING in this zone or have a GAP to close.

### 3. THREE MONETIZATION PATHS

**Path 1 · HIGHEST PROBABILITY** (uses what they already do)
- 1-sentence framing
- 3 concrete actions
- Revenue potential range (€/$): conservative

**Path 2 · HIGHEST CEILING** (biggest market opportunity)
- 1-sentence framing
- 3 concrete actions
- Revenue potential range: ambitious

**Path 3 · MOST ALIGNED** (deepest values fit)
- 1-sentence framing
- 3 concrete actions
- Why this matters even if it earns less

### 4. THREE IMMEDIATE NEXT STEPS

**TODAY** (within the next 4 hours):
- One action they can take RIGHT NOW

**THIS WEEK** (before Sunday):
- One action with clear deliverable

**THIS MONTH** (before [30 days from today]):
- One bigger move that compounds

### 5. THREE AI EMPLOYEE PICKS (for 10X With AI cohort)

Rank these 5 AI Executives by alignment with their Ikigai · top 3 only:

- AI Marketing Executive (content audit · 14-day plan · social posts)
- AI Sales Executive (lead gen · personalized outreach · CRM)
- AI Operations Executive (inbox triage · SOP generation · calendar)
- AI Finance Executive (Stripe pull · cashflow brief · forecasts)
- AI CEO Brain (Monday morning briefing aggregating from all 4)

For each ranked pick:
- 1-sentence WHY this Employee aligns with their Ikigai
- The ONE outcome it unlocks for them

## Output Format

After generating the 5 outputs · ALSO generate a single standalone HTML file using the template in `ikigai-template.html`. Replace all `{placeholder}` tags with the user's actual data and your synthesized outputs.

Save the file to `~/10x-with-ai/templates/my-ikigai-discovery.html`

Open it in their default browser when done.

## Tone Rules

- Be PERSONAL · use their language
- Be SPECIFIC · reference what they said
- Be HONEST · don't sugarcoat gaps
- Be ENCOURAGING · acknowledge what's working
- Be STRATEGIC · connect to their cohort journey

Never use these words/phrases:
- "It's clear that..." (too generic)
- "Your unique gift..." (too coaching-cliché)
- "Authentic" (overused)
- "Aligned" (overused)
- "Journey" (overused)

DO use:
- Their exact phrasing
- Concrete numbers · timelines · specifics
- The names of real things they mentioned

## After Output

End with:

> *"This is your Ikigai map. Save the file. Print it. Pin it where you'll see it daily.*
>
> *On Day 1 of 10X With AI · we use this to pick which AI Employee you build FIRST.*
>
> *See you July 21 · 12pm CEST."*

---

Skill prompt version: 1.0
For: Ikigai Discovery Journey Skill
Pairs with: ikigai-template.html
