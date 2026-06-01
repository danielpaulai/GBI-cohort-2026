# Ikigai Output · Component Library
## Curated snippets from Aceternity UI · Magic UI · 21st.dev · shadcn

> **How to use this:** when generating the Ikigai HTML output · pull these specific component patterns to add "wow" moments.
> Each snippet is self-contained CDN-loadable. No npm install needed.

---

## ESSENTIAL CDN INCLUDES (drop in <head>)

```html
<!-- Always include these -->
<script src="https://cdn.tailwindcss.com"></script>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Fraunces:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

<!-- For animation-heavy outputs (Neural Noir style) -->
<script crossorigin src="https://unpkg.com/react@18/umd/react.production.min.js"></script>
<script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.production.min.js"></script>
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/framer-motion@11/dist/framer-motion.min.js"></script>

<!-- For icons -->
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
```

---

## COMPONENT 1 · AURORA BACKGROUND (Aceternity-style)

**Use for:** Neural Noir hero section · creates animated colored aurora behind hero text.

```html
<style>
  .aurora-bg {
    position: relative;
    min-height: 600px;
    overflow: hidden;
    background: #000;
  }
  .aurora-bg::before {
    content: '';
    position: absolute;
    inset: 0;
    background:
      radial-gradient(ellipse 80% 50% at 50% -20%, rgba(255, 51, 102, 0.3), transparent),
      radial-gradient(ellipse 50% 80% at 80% 50%, rgba(255, 51, 102, 0.15), transparent),
      radial-gradient(ellipse 50% 80% at 20% 50%, rgba(0, 255, 204, 0.1), transparent);
    animation: aurora 15s ease infinite;
  }
  @keyframes aurora {
    0%, 100% { transform: translate(0, 0) rotate(0deg); }
    33% { transform: translate(-5%, 5%) rotate(120deg); }
    66% { transform: translate(5%, -5%) rotate(240deg); }
  }
</style>

<section class="aurora-bg">
  <div class="relative z-10 flex flex-col items-center justify-center min-h-[600px] text-center px-6">
    <h1 class="text-7xl md:text-9xl font-serif italic text-white leading-none">
      Your Ikigai
    </h1>
  </div>
</section>
```

---

## COMPONENT 2 · TEXT GENERATE EFFECT (Aceternity-style)

**Use for:** Ikigai Sentence reveal · letter-by-letter typing animation.

```html
<style>
  .text-generate span {
    opacity: 0;
    display: inline-block;
    filter: blur(8px);
    animation: textReveal 0.5s ease forwards;
  }
  @keyframes textReveal {
    to { opacity: 1; filter: blur(0); }
  }
</style>

<p class="text-3xl md:text-5xl font-serif italic text-center max-w-4xl mx-auto text-generate">
  <!-- Each word wrapped in span with sequential delay -->
  <span style="animation-delay: 0.1s">I</span>
  <span style="animation-delay: 0.2s">build</span>
  <span style="animation-delay: 0.3s">AI</span>
  <span style="animation-delay: 0.4s">Employees</span>
  <span style="animation-delay: 0.5s">for</span>
  <!-- continue for each word in the user's sentence -->
</p>

<script>
  // Auto-wrap each word in spans with incrementing delay
  document.querySelectorAll('.text-generate').forEach(el => {
    const words = el.textContent.split(' ');
    el.innerHTML = words.map((word, i) =>
      `<span style="animation-delay: ${0.1 + (i * 0.05)}s">${word} </span>`
    ).join('');
  });
</script>
```

---

## COMPONENT 3 · NUMBER TICKER (Magic UI-style)

**Use for:** Revenue potentials · time-savings stats · counting up animations.

```html
<style>
  .number-ticker {
    font-family: 'JetBrains Mono', monospace;
    font-weight: 800;
    font-size: 64px;
    color: var(--accent);
    display: inline-block;
  }
</style>

<span class="number-ticker" data-target="40000" data-prefix="$" data-suffix=">"
      id="revenue-ticker">$0</span>

<script>
  function animateTicker(el) {
    const target = parseInt(el.dataset.target);
    const prefix = el.dataset.prefix || '';
    const duration = 2000;
    const start = performance.now();

    function update(now) {
      const elapsed = now - start;
      const progress = Math.min(elapsed / duration, 1);
      const eased = 1 - Math.pow(1 - progress, 3); // ease-out-cubic
      const value = Math.floor(target * eased);
      el.textContent = prefix + value.toLocaleString();
      if (progress < 1) requestAnimationFrame(update);
    }
    requestAnimationFrame(update);
  }

  // Trigger when in viewport
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(e => {
      if (e.isIntersecting) {
        animateTicker(e.target);
        observer.unobserve(e.target);
      }
    });
  });
  document.querySelectorAll('.number-ticker').forEach(el => observer.observe(el));
</script>
```

---

## COMPONENT 4 · BENTO GRID (21st.dev-style)

**Use for:** Pattern Overlaps + Monetization Paths · asymmetric card layouts.

```html
<div class="grid grid-cols-1 md:grid-cols-3 gap-4 max-w-7xl mx-auto px-6">
  <!-- Card 1 · spans 2 columns -->
  <div class="md:col-span-2 bg-white rounded-lg p-8 border border-gray-200 hover:shadow-lg transition-all">
    <div class="text-6xl font-serif font-black text-[#E90D41] mb-4">01</div>
    <h3 class="text-2xl font-serif font-bold mb-3">Highest Probability</h3>
    <p class="text-gray-700">{{path1_framing}}</p>
  </div>

  <!-- Card 2 · single column -->
  <div class="bg-black text-white rounded-lg p-8">
    <div class="text-6xl font-serif font-black text-[#E90D41] mb-4">02</div>
    <h3 class="text-2xl font-serif font-bold mb-3">Highest Ceiling</h3>
    <p class="text-gray-300">{{path2_framing}}</p>
  </div>

  <!-- Card 3 · single column -->
  <div class="bg-[#FAFAF8] rounded-lg p-8 border-2 border-[#E90D41]">
    <div class="text-6xl font-serif font-black text-[#E90D41] mb-4">03</div>
    <h3 class="text-2xl font-serif font-bold mb-3">Most Aligned</h3>
    <p class="text-gray-700">{{path3_framing}}</p>
  </div>
</div>
```

---

## COMPONENT 5 · ANIMATED IKIGAI DIAGRAM (custom SVG + Framer Motion)

**Use for:** The 4-circle Venn diagram · interactive on hover.

```html
<style>
  .ikigai-circle {
    cursor: pointer;
    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  }
  .ikigai-circle:hover {
    fill-opacity: 0.25;
    transform-origin: center;
    transform: scale(1.02);
  }
  .ikigai-center-pulse {
    animation: pulse 3s ease-in-out infinite;
  }
  @keyframes pulse {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.8; }
  }
  .ikigai-circle-label {
    font-family: 'Inter', sans-serif;
    font-weight: 800;
    font-size: 14px;
    letter-spacing: 2px;
    text-transform: uppercase;
    fill: #0E0E10;
  }
</style>

<svg viewBox="0 0 600 600" class="w-full max-w-2xl mx-auto">
  <!-- Top circle: LOVE -->
  <circle cx="300" cy="200" r="180"
          class="ikigai-circle"
          fill="#E90D41" fill-opacity="0.08"
          stroke="#E90D41" stroke-width="2"/>
  <text x="300" y="60" class="ikigai-circle-label" text-anchor="middle">LOVE</text>

  <!-- Left circle: GOOD AT -->
  <circle cx="200" cy="320" r="180"
          class="ikigai-circle"
          fill="#E90D41" fill-opacity="0.08"
          stroke="#E90D41" stroke-width="2"/>
  <text x="50" y="320" class="ikigai-circle-label" text-anchor="middle">GOOD AT</text>

  <!-- Right circle: PAID FOR -->
  <circle cx="400" cy="320" r="180"
          class="ikigai-circle"
          fill="#E90D41" fill-opacity="0.08"
          stroke="#E90D41" stroke-width="2"/>
  <text x="550" y="320" class="ikigai-circle-label" text-anchor="middle">PAID FOR</text>

  <!-- Bottom circle: WORLD NEEDS -->
  <circle cx="300" cy="400" r="180"
          class="ikigai-circle"
          fill="#E90D41" fill-opacity="0.08"
          stroke="#E90D41" stroke-width="2"/>
  <text x="300" y="580" class="ikigai-circle-label" text-anchor="middle">WORLD NEEDS</text>

  <!-- Center: IKIGAI -->
  <circle cx="300" cy="300" r="60"
          fill="#E90D41"
          class="ikigai-center-pulse"/>
  <text x="300" y="305"
        fill="white"
        font-family="Fraunces"
        font-style="italic"
        font-weight="700"
        font-size="20"
        letter-spacing="2"
        text-anchor="middle">IKIGAI</text>
</svg>
```

---

## COMPONENT 6 · SPOTLIGHT EFFECT (Aceternity-style)

**Use for:** Highlighting the Ikigai Sentence with a soft moving spotlight.

```html
<style>
  .spotlight-container {
    position: relative;
    overflow: hidden;
  }
  .spotlight {
    position: absolute;
    width: 800px;
    height: 800px;
    background: radial-gradient(circle, rgba(233, 13, 65, 0.15) 0%, transparent 70%);
    pointer-events: none;
    transition: transform 0.5s ease-out;
    transform: translate(-50%, -50%);
  }
</style>

<div class="spotlight-container" id="spotlight-area">
  <div class="spotlight" id="spotlight"></div>
  <h2 class="relative z-10">...your content here</h2>
</div>

<script>
  const area = document.getElementById('spotlight-area');
  const spotlight = document.getElementById('spotlight');
  area.addEventListener('mousemove', (e) => {
    const rect = area.getBoundingClientRect();
    spotlight.style.transform = `translate(${e.clientX - rect.left}px, ${e.clientY - rect.top}px) translate(-50%, -50%)`;
  });
</script>
```

---

## COMPONENT 7 · MARQUEE / SCROLLING TICKER (Magic UI-style)

**Use for:** Showing the user's signature phrases in a marquee at the bottom.

```html
<style>
  .marquee {
    display: flex;
    overflow: hidden;
    user-select: none;
    gap: 2rem;
    mask-image: linear-gradient(to right, transparent, black 10%, black 90%, transparent);
  }
  .marquee-content {
    display: flex;
    gap: 2rem;
    animation: scroll 30s linear infinite;
    flex-shrink: 0;
  }
  @keyframes scroll {
    from { transform: translateX(0); }
    to { transform: translateX(-100%); }
  }
  .marquee-item {
    background: #FAFAF8;
    padding: 12px 24px;
    border-radius: 100px;
    font-style: italic;
    color: #6B6B6E;
    white-space: nowrap;
    flex-shrink: 0;
  }
</style>

<div class="marquee py-8">
  <div class="marquee-content">
    <span class="marquee-item">{{love_answer_1}}</span>
    <span class="marquee-item">{{good_at_answer_1}}</span>
    <span class="marquee-item">{{world_needs_answer_1}}</span>
    <span class="marquee-item">{{paid_for_answer_1}}</span>
    <!-- Duplicate for seamless loop -->
    <span class="marquee-item">{{love_answer_2}}</span>
    <span class="marquee-item">{{good_at_answer_2}}</span>
  </div>
</div>
```

---

## COMPONENT 8 · BORDER BEAM (Magic UI-style)

**Use for:** Highlighting AI Employee picks with an animated border.

```html
<style>
  .border-beam {
    position: relative;
    border-radius: 12px;
    background: #1A1A1C;
    overflow: hidden;
    padding: 32px;
  }
  .border-beam::before {
    content: '';
    position: absolute;
    inset: 0;
    padding: 2px;
    border-radius: 12px;
    background: conic-gradient(
      from var(--angle, 0deg),
      transparent 70%,
      #E90D41 90%,
      transparent 100%
    );
    -webkit-mask:
      linear-gradient(#000 0 0) content-box,
      linear-gradient(#000 0 0);
    -webkit-mask-composite: xor;
    mask-composite: exclude;
    animation: rotate 4s linear infinite;
  }
  @keyframes rotate {
    to { --angle: 360deg; }
  }
  @property --angle {
    syntax: '<angle>';
    initial-value: 0deg;
    inherits: false;
  }
</style>

<div class="border-beam">
  <h3>AI Marketing Executive</h3>
  <p>Your top pick</p>
</div>
```

---

## COMPONENT 9 · SHARE TO WHATSAPP

**Use for:** Bottom CTA · share the Ikigai discovery to WhatsApp.

```html
<a href="javascript:void(0)"
   onclick="shareToWhatsApp()"
   class="inline-block bg-[#25D366] text-white px-8 py-4 rounded-full font-bold uppercase tracking-wider hover:bg-[#1ea952] transition-colors">
  📱 Share My Ikigai on WhatsApp
</a>

<script>
  function shareToWhatsApp() {
    const text = encodeURIComponent(
      `I just discovered my Ikigai 🔥\n\n"${IKIGAI_SENTENCE}"\n\n— via 10X With AI Cohort`
    );
    window.open(`https://wa.me/?text=${text}`, '_blank');
  }
</script>
```

---

## COMPONENT 10 · PRINT-OPTIMIZED CSS

**Use for:** Making the output print beautifully when user hits Cmd+P.

```css
@media print {
  body { background: white !important; }
  .aurora-bg, .border-beam {
    background: white !important;
    color: black !important;
  }
  .text-white { color: black !important; }
  .ikigai-circle { fill-opacity: 0.05 !important; }
  .button, .marquee, .share-section { display: none !important; }

  .card, .step-card, .pattern-card {
    page-break-inside: avoid;
    border: 1px solid #ccc !important;
    box-shadow: none !important;
  }

  /* Force page breaks before major sections */
  .section-monetization { page-break-before: always; }
  .section-employees { page-break-before: always; }
}

/* Page setup */
@page {
  size: A4;
  margin: 15mm;
}
```

---

## ASSEMBLY ORDER (top to bottom)

1. **Aurora Background** (Component 1) for hero section
2. **Text Generate Effect** (Component 2) for Ikigai sentence reveal
3. **Animated Ikigai Diagram** (Component 5) for the 4-circle visualization
4. **Marquee** (Component 7) showing their signature answers
5. **Bento Grid** (Component 4) for monetization paths
6. **Number Ticker** (Component 3) for revenue potentials
7. **Border Beam** (Component 8) for AI Employee picks
8. **Spotlight Effect** (Component 6) on key sections
9. **WhatsApp Share** (Component 9) at the bottom
10. **Print CSS** (Component 10) always included

---

## QUALITY CHECKLIST

Before declaring the output "done":

- [ ] All animations work in Chrome · Safari · Firefox
- [ ] Mobile responsive (test at 375px width)
- [ ] Loads in <2 sec (no large image dependencies)
- [ ] Print preview looks clean (Cmd+P)
- [ ] User's actual data appears in every section
- [ ] Style matches the chosen aesthetic (Neural Noir / Soft Ikigai / Blueprint)
- [ ] Single HTML file · no external dependencies beyond CDN

---

## SOURCES

- **Aceternity UI** (animations) · https://ui.aceternity.com/components
- **Magic UI** (micro-interactions) · https://magicui.design
- **21st.dev** (component marketplace) · https://21st.dev
- **shadcn/ui** (base components) · https://ui.shadcn.com
- **Tailwind CSS** (utility framework) · https://tailwindcss.com
- **Framer Motion** (React animation) · https://www.framer.com/motion
- **Lucide** (icons) · https://lucide.dev

---

Document version: 1.0
For: Ikigai Discovery Journey Skill
Use with: ikigai-template.html
