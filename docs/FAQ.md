# FAQ · 10X With AI Cohort

> Common questions · quick answers.

---

## 🛠 INSTALL

### Q: I ran the install but got "claude: command not found"
**A:** Install Claude Code Desktop first: https://claude.ai/download · then re-run the install.

### Q: I'm on Windows · the curl command doesn't work
**A:** Use PowerShell:
```powershell
iwr -useb https://raw.githubusercontent.com/danielpaulai/GBI-cohort-2026/main/install.ps1 | iex
```

### Q: The install said skills failed to download
**A:** Some skills may not be available yet from Anthropic Marketplace. The 3 cohort skills (Ikigai · Voice · Business Brain) should always install. Try `claude skills reload` and verify with `claude skills list`.

### Q: Will this work on my work laptop?
**A:** If your work laptop has Claude Code installed · yes. Some corporate firewalls block GitHub raw URLs. If so · download the repo as ZIP from GitHub and unzip locally.

---

## 🌸 IKIGAI SKILL

### Q: How long does the Ikigai journey take?
**A:** ~10 minutes if you go straight through. The skill saves progress · you can pause anytime by saying "pause my Ikigai."

### Q: Can I redo my Ikigai?
**A:** Yes. Just say "redo my Ikigai" and it starts fresh.

### Q: I gave a short answer · Claude asked for more
**A:** Good. That's the skill working as designed. Vague answers → generic output. Specific answers → personalized output. Lean in.

### Q: The output looks generic
**A:** Re-run with more specific answers. Or report to Karthik · maybe the synthesis prompt needs improvement.

### Q: Can I change the visual style?
**A:** Yes. After the journey · pick Soft (warm cream) · Noir (black + red) · or Blueprint (white + cobalt). Or click the style buttons in the top-right of the output page to change live.

---

## 🎤 VOICE PROFILE SKILL

### Q: Do I need a LinkedIn URL?
**A:** No · but it helps. You can also paste 5-10 of your best posts · or type 200 words of authentic writing.

### Q: What if I haven't published much?
**A:** Type your most authentic writing in any form (emails · journal · texts). The skill extracts patterns from whatever you give it.

### Q: How do I share my Voice DNA across all 5 AI Employees?
**A:** The skill auto-saves to `~/10x-with-ai/voice-dna.md` · which Claude reads from every Project. Or pin it manually to each Project (Day 2 live session covers this).

---

## 🧠 BUSINESS BRAIN SKILL

### Q: 15 sections · 34 questions feels like a lot
**A:** Total time is ~45 min if you go straight through. But you can do it in chunks. The skill saves progress between sections.

### Q: Should I do Business Brain BEFORE or AFTER Ikigai?
**A:** After. Business Brain auto-pulls from your Ikigai answers · so doing it after saves you ~10 min of re-answering.

### Q: My business is changing · should I update Business Brain?
**A:** Yes · weekly is ideal. Type "update my business brain" · Claude walks you through changed sections only.

---

## 📅 COHORT LOGISTICS

### Q: What if I can't make a live session?
**A:** All sessions are recorded. Replays uploaded within 12 hours. WhatsApp Karthik if you'll miss · we'll send a personal follow-up.

### Q: What if I fall behind on daily ships?
**A:** Tell Angelyn (CS) in WhatsApp. She'll get you a catch-up plan. The Deployment Promise means we stay with you until you're deployed · period.

### Q: Can I bring a partner / co-founder?
**A:** Only registered cohort members access the live sessions. But your partner CAN use the skills you install on your machine. You'll both benefit.

### Q: When does the 3-month support start?
**A:** August 8 · the day the cohort officially ends. WhatsApp support runs until November 8.

---

## 💻 TECH ISSUES

### Q: Claude isn't recognizing my skill triggers
**A:** Run `claude skills reload` in Terminal · or restart Claude Code Desktop. Then re-try the trigger phrase.

### Q: Where are my files saved?
**A:** All cohort files: `~/10x-with-ai/`
   - `~/10x-with-ai/templates/` · templates
   - `~/10x-with-ai/marketing/` (and sales/ · operations/ · finance/ · ceo-brain/) · per-Employee work
   - `~/10x-with-ai/my-work/` · your daily outputs

### Q: How do I update the skills?
**A:** Re-run the install command. It always pulls the latest version from GitHub.

```bash
curl -fsSL https://raw.githubusercontent.com/danielpaulai/GBI-cohort-2026/main/install.sh | bash
```

### Q: How do I uninstall?
**A:** Delete `~/.claude/skills/ikigai-discovery-journey` (and voice-profile-builder · business-brain-builder). Your `~/10x-with-ai/` workspace stays intact.

---

## 💰 OFFER / COHORT FEATURES

### Q: After the 21 days · do I still get access to the skills?
**A:** Yes · forever. The skills + your workspace are yours to keep.

### Q: Will future cohort updates be included?
**A:** Yes for the next 12 months. Future versions of these skills auto-update when you re-run install. After 12 months · alumni rate applies for new features.

### Q: When's cohort #2?
**A:** TBA · likely September/October 2026. Alumni get early-bird pricing.

---

## 🆘 STILL STUCK?

| Issue | Contact |
|---|---|
| Tech / install issues | WhatsApp Karthik · under 4 hr response |
| Cohort logistics | WhatsApp Juvy (mornings) · Mary (afternoons) |
| Daily ship accountability | Angelyn (CS) · weekly check-ins |
| Strategic / business questions | Daniel in live sessions · or "ask AI Daniel" |
| Anything else | Cohort WhatsApp group |

---

## 📝 Last updated

Version 1.0.0 · 2026-05-17

Want to add to this FAQ? Open an issue on this repo or DM Karthik.
