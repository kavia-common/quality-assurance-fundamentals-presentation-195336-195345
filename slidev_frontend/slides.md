---
theme: default
title: "Quality Mindset – Foundations of QA"
info: |
  1-hour foundational training for mixed roles (Developers, QA, Scrum Masters, Interns, Leads)
  Visual-first slides with speaker notes
class: text-left
mdc: true
transition: slide-left
fonts:
  sans: Inter, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial
  mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace
css: |
  @import "./style.css";
---

# Quality Mindset<br/>Foundations of QA
<div class="subtitle-row">
  <div class="pill">Shared language • Shared ownership • Better outcomes</div>
  <div class="subtle">Audience: Developers • QA Engineers • Scrum Masters • Interns • Leads</div>
</div>

<div class="hero-tiles">
  <div class="tile">
    <div class="tile-icon">🎯</div>
    <div class="tile-title">Goal</div>
    <div class="tile-text">Build a shared understanding of quality and how we deliver it together.</div>
  </div>
  <div class="tile">
    <div class="tile-icon">🧠</div>
    <div class="tile-title">Mindset</div>
    <div class="tile-text">Prevent defects early, learn fast, reduce risk.</div>
  </div>
  <div class="tile">
    <div class="tile-icon">🤝</div>
    <div class="tile-title">Team</div>
    <div class="tile-text">Quality is not a phase. It is how we work.</div>
  </div>
</div>

<div class="footer-note subtle">Deck exports to PPTX via <code>pnpm export</code> (see README updates).</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–00:30 Welcome and context.
- This session is about establishing a shared “quality mindset,” not teaching a specific tool.
- Mixed audience: devs, QA, Scrum Masters, interns, leads. Everyone has a role in quality.

00:30–02:00 Set expectations.
- We will cover what quality means, the difference between QA/QC/testing, where QA fits in SDLC and Scrum.
- We will also touch on how AI systems change the risk profile and what that means for QA thinking.

02:00–04:30 How to participate.
- Ask questions and share examples from your product area.
- When you hear something that feels “obvious,” treat it as a chance to align vocabulary and behaviors across roles.

04:30–05:00 Transition.
- Let’s start with why quality matters economically and socially.
-->

---

# Why Quality Matters
<div class="two-col">
  <div class="card">
    <div class="eyebrow">Impact chain</div>
    <div class="chain">
      <div class="chain-node bad">Broken feature</div>
      <div class="chain-arrow">→</div>
      <div class="chain-node warn">Unhappy user</div>
      <div class="chain-arrow">→</div>
      <div class="chain-node bad">Lost trust</div>
      <div class="chain-arrow">→</div>
      <div class="chain-node bad">Churn / revenue loss</div>
    </div>
    <div class="subtle mt-2">Quality failures are rarely “just bugs” — they are business outcomes.</div>
  </div>

  <div class="card">
    <div class="eyebrow">Cost of defects</div>
    <div class="curve">
      <div class="curve-axis">
        <div class="axis-label">Earlier</div>
        <div class="axis-line"></div>
        <div class="axis-label">Later</div>
      </div>
      <div class="curve-body">
        <div class="dot d1">Req</div>
        <div class="dot d2">Design</div>
        <div class="dot d3">Dev</div>
        <div class="dot d4">Test</div>
        <div class="dot d5">Prod</div>
        <svg class="curve-svg" viewBox="0 0 600 220" preserveAspectRatio="none" aria-hidden="true">
          <path d="M30,190 C120,185 180,170 240,150 C310,125 360,105 410,80 C470,40 520,20 570,10"
                fill="none" stroke="rgba(59,130,246,0.95)" stroke-width="6" stroke-linecap="round"/>
        </svg>
      </div>
      <div class="subtle mt-2">Fixing a defect in production is typically far more expensive than preventing it upstream.</div>
    </div>
  </div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:30 Story + framing.
- Quality is how users experience our product. When it breaks, users pay first—then we pay.
- Share a quick example: an outage, a broken payment flow, a data leak, or even a confusing UI.

01:30–03:00 The “impact chain.”
- A defect is rarely isolated: it becomes support tickets, refunds, escalations, negative reviews, and distraction from roadmap.
- Trust is cumulative and fragile: it takes time to build and seconds to lose.

03:00–04:30 Cost of defects curve (left-to-right).
- Earlier phases are cheaper because context is fresh and changes are small.
- Late defects often include hidden work: coordination, hotfixes, rollback risk, customer comms, compliance reporting.

04:30–05:00 Transition.
- If quality is so important, what do we actually mean by “quality”?
-->

---

# What Does Quality Mean?
<div class="pillars">
  <div class="pillar">
    <div class="icon">✅</div>
    <div class="title">Correctness</div>
    <div class="text subtle">Does it do the right thing?</div>
  </div>
  <div class="pillar">
    <div class="icon">🧭</div>
    <div class="title">Usability</div>
    <div class="text subtle">Can users succeed easily?</div>
  </div>
  <div class="pillar">
    <div class="icon">🛡️</div>
    <div class="title">Reliability</div>
    <div class="text subtle">Does it work consistently?</div>
  </div>
  <div class="pillar">
    <div class="icon">🔒</div>
    <div class="title">Security</div>
    <div class="text subtle">Is it safe from misuse?</div>
  </div>
  <div class="pillar">
    <div class="icon">⚡</div>
    <div class="title">Performance</div>
    <div class="text subtle">Is it fast enough?</div>
  </div>
  <div class="pillar">
    <div class="icon">🧱</div>
    <div class="title">Maintainability</div>
    <div class="text subtle">Can we change it safely?</div>
  </div>
</div>

<div class="card mt-2">
  <div class="eyebrow">Key idea</div>
  <div class="big">Quality is “fit for purpose” across multiple dimensions, not just “no bugs.”</div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:00 Set the definition.
- Many teams equate quality with “lack of defects,” but quality is broader: it is whether the product meets user needs safely and reliably.

01:00–02:30 Walk through pillars.
- Correctness: functional behavior matches requirements.
- Usability: users can complete tasks without confusion or excessive effort.
- Reliability: resilience under real conditions (latency, intermittent failures, retries).
- Security: protecting confidentiality/integrity/availability and minimizing abuse.
- Performance: speed/latency/throughput are part of user experience.
- Maintainability: ability to modify and evolve without destabilizing.

02:30–04:00 Trade-offs.
- Sometimes pillars conflict (e.g., speed vs. security friction). Quality is making explicit trade-offs aligned to user and business risk.

04:00–05:00 Transition.
- Now, how do QA, QC, and testing fit into achieving these pillars?
-->

---

# QA vs QC vs Testing
<div class="venn-wrap">
  <div class="venn">
    <div class="circle qa">
      <div class="label">QA</div>
      <div class="desc">Prevention</div>
      <div class="subtle small">Process • Standards • Learning</div>
    </div>
    <div class="circle qc">
      <div class="label">QC</div>
      <div class="desc">Detection</div>
      <div class="subtle small">Reviews • Audits • Checks</div>
    </div>
    <div class="circle test">
      <div class="label">Testing</div>
      <div class="desc">Activity</div>
      <div class="subtle small">Execute • Observe • Compare</div>
    </div>
    <div class="overlap">
      <div class="pill">Shared goal: reduce risk and improve confidence</div>
    </div>
  </div>

  <div class="card mt-2">
    <div class="eyebrow">One-line mental model</div>
    <div class="big">QA builds the system that helps us do quality; QC verifies outputs; testing is one way we verify.</div>
  </div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:00 Start with common confusion.
- People often use QA and testing interchangeably. This creates mismatched expectations.

01:00–02:30 Definitions.
- Quality Assurance (QA): preventative. It focuses on how we build—process, standards, and feedback loops that reduce defects upstream.
- Quality Control (QC): detective. It checks outputs: peer review, audits, conformance checks.
- Testing: an activity (manual or automated) that exercises the system to reveal issues or build confidence.

02:30–04:00 Implication for teams.
- A “QA team” can do testing, but the value is bigger: enabling quality across the SDLC.
- Developers do QA activities too: code reviews, design discussions, unit tests, monitoring readiness.

04:00–05:00 Transition.
- If QA is more than testing, what mindset does it require—especially under pressure?
-->

---

# The QA Mindset
<div class="center-card">
  <div class="quote">“If QA is silent, be afraid.”</div>
  <div class="subtle mt-1">Silence often means issues are unseen, unspoken, or being normalized.</div>
</div>

<div class="roles-ring mt-2">
  <div class="ring-center">
    <div class="ring-title">Quality</div>
    <div class="ring-sub subtle">User outcomes • Risk • Trust</div>
  </div>

  <div class="ring-node n1">
    <div class="pill">Developers</div>
    <div class="subtle small">Design for testability</div>
  </div>
  <div class="ring-node n2">
    <div class="pill">QA Engineers</div>
    <div class="subtle small">Expose risk early</div>
  </div>
  <div class="ring-node n3">
    <div class="pill">Scrum Masters</div>
    <div class="subtle small">Protect healthy flow</div>
  </div>
  <div class="ring-node n4">
    <div class="pill">Leads</div>
    <div class="subtle small">Make trade-offs explicit</div>
  </div>
  <div class="ring-node n5">
    <div class="pill">Interns</div>
    <div class="subtle small">Ask “why” and learn</div>
  </div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:30 Explain the quote.
- “If QA is silent, be afraid” does not mean QA must be negative; it means risk must be surfaced.
- Silence can indicate: fear of conflict, lack of time, unclear ownership, or “we’ll fix later” culture.

01:30–03:00 Pressures and trade-offs.
- Teams face schedule pressure, scope creep, unclear requirements, and dependencies.
- The QA mindset is the habit of asking: What could go wrong? Who is impacted? How will we know quickly? What is acceptable risk?

03:00–04:30 Shared ownership.
- Everyone contributes differently:
  - Developers: testable designs, unit checks, error handling, observability.
  - QA engineers: risk analysis, exploratory testing, learning loops, validation strategy.
  - Scrum Masters: ensure quality is part of “how we work,” not a last-minute phase.
  - Leads: set expectations, define “done,” decide trade-offs openly.
  - Interns: bring fresh eyes; asking naive questions catches real issues.

04:30–05:00 Transition.
- Let’s place this mindset into the software lifecycle.
-->

---

# QA in the SDLC
<div class="sdlc-loop">
  <div class="phase p1">
    <div class="phase-title">Requirements</div>
    <div class="phase-sub subtle">Clarify • Ask “what if”</div>
  </div>
  <div class="phase p2">
    <div class="phase-title">Design</div>
    <div class="phase-sub subtle">Testability • Risks</div>
  </div>
  <div class="phase p3">
    <div class="phase-title">Build</div>
    <div class="phase-sub subtle">Checks • Reviews</div>
  </div>
  <div class="phase p4">
    <div class="phase-title">Test</div>
    <div class="phase-sub subtle">Validate • Explore</div>
  </div>
  <div class="phase p5">
    <div class="phase-title">Release</div>
    <div class="phase-sub subtle">Readiness • Rollback</div>
  </div>
  <div class="phase p6">
    <div class="phase-title">Operate</div>
    <div class="phase-sub subtle">Monitor • Learn</div>
  </div>

  <div class="loop-label card">
    <div class="eyebrow">QA responsibilities</div>
    <div class="big">Quality is built-in across phases, with feedback loops back to requirements and design.</div>
  </div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:00 Set the big picture.
- QA is not “the testing phase.” It is a set of responsibilities distributed across the SDLC.

01:00–03:30 Walk phase by phase with concrete examples.
- Requirements: define acceptance criteria, identify edge cases, clarify non-functional needs (performance/security).
- Design: validate design assumptions, identify integration risks, define test strategy, ensure observability needs are included.
- Build: code reviews, static analysis, unit tests, component tests, feature flags, error handling.
- Test: functional validation, regression, exploratory, risk-based focus; validate fixes.
- Release: check readiness, deployment verification, rollback plan, smoke checks.
- Operate: monitor KPIs/errors, triage, incident learning, prevent recurrence.

03:30–04:30 Emphasize feedback loops.
- Production incidents should improve requirements and design (not just “patch and move on”).

04:30–05:00 Transition.
- With that lifecycle view, what are the major types and methods of testing we use to build confidence?
-->

---

# Testing Types & Methods
<div class="pyramid-wrap">
  <div class="pyramid">
    <div class="layer l1">
      <div class="layer-title">Unit</div>
      <div class="layer-sub subtle">Fast • Isolated • Lots</div>
    </div>
    <div class="layer l2">
      <div class="layer-title">Integration</div>
      <div class="layer-sub subtle">APIs • Components</div>
    </div>
    <div class="layer l3">
      <div class="layer-title">End-to-End</div>
      <div class="layer-sub subtle">User flows • Fewer</div>
    </div>
    <div class="layer l4">
      <div class="layer-title">Manual / Exploratory</div>
      <div class="layer-sub subtle">Human insight</div>
    </div>
  </div>

  <div class="card mt-2">
    <div class="chips">
      <div class="chip">Functional</div>
      <div class="chip">Non-functional</div>
      <div class="chip">Manual</div>
      <div class="chip">Automation</div>
      <div class="chip">Regression</div>
      <div class="chip">Exploratory</div>
      <div class="chip">Risk-based</div>
    </div>
    <div class="subtle mt-1">Pick methods based on risk, cost, and feedback speed.</div>
  </div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:30 Explain the pyramid.
- The pyramid is a heuristic: prefer many fast checks (unit), fewer expensive checks (E2E).
- Not all products fit perfectly, but the principle is feedback speed and stability.

01:30–03:30 Clarify categories.
- Functional: features behave as intended (workflows, rules, calculations).
- Non-functional: security, performance, reliability, accessibility, usability.
- Manual vs automation: manual gives discovery; automation gives repeatability.
- Regression: ensure old behavior remains correct after changes.
- Exploratory: goal-driven learning and probing, especially for new features or risky areas.
- Risk-based: focus where failure impact or likelihood is highest.

03:30–04:30 Trade-offs.
- End-to-end tests provide high confidence but can be flaky and slow; keep them focused on critical journeys.
- Non-functional testing is often late; the mindset is to consider it early.

04:30–05:00 Transition.
- Testing is only one part. What are core QA deliverables and how do they flow?
-->

---

# QA Deliverables (Core Practices)
<div class="doc-flow">
  <div class="doc-node">
    <div class="doc-title">Strategy</div>
    <div class="doc-sub subtle">Quality goals, risks, approach</div>
  </div>
  <div class="doc-arrow">→</div>
  <div class="doc-node">
    <div class="doc-title">Test Plan</div>
    <div class="doc-sub subtle">Scope, environments, schedule</div>
  </div>
  <div class="doc-arrow">→</div>
  <div class="doc-node">
    <div class="doc-title">Test Cases</div>
    <div class="doc-sub subtle">Checks + data + expected results</div>
  </div>
  <div class="doc-arrow">→</div>
  <div class="doc-node">
    <div class="doc-title">Defects</div>
    <div class="doc-sub subtle">Evidence, severity/priority</div>
  </div>
  <div class="doc-arrow">→</div>
  <div class="doc-node">
    <div class="doc-title">Report</div>
    <div class="doc-sub subtle">Status, risks, recommendations</div>
  </div>
</div>

<div class="card mt-2">
  <div class="eyebrow">Practice principle</div>
  <div class="big">Artifacts exist to enable decisions, not to create paperwork.</div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:00 Start with why deliverables matter.
- QA deliverables help the team make decisions: what is ready, what is risky, and what to do next.

01:00–03:00 Walk the flow.
- Strategy: high-level agreement on quality goals and major risks.
- Test plan: how we will validate; scope, people, schedule, environments.
- Test cases: documented checks (manual or automated), including data and expected results.
- Defects: recorded with evidence and context so they can be fixed efficiently.
- Report: communicate quality status and recommendations to stakeholders.

03:00–04:00 Keep it lightweight and useful.
- The right amount of documentation depends on complexity and risk.
- In agile, documentation can be lean: shared checklists, acceptance criteria, concise test charters.

04:00–05:00 Transition.
- Defects are a key output. Let’s align on a typical bug life cycle and the difference between severity and priority.
-->

---

# Bug Life Cycle
<div class="bug-flow">
  <div class="bug-node">New</div>
  <div class="bug-arrow">→</div>
  <div class="bug-node">Triaged</div>
  <div class="bug-arrow">→</div>
  <div class="bug-node">Assigned</div>
  <div class="bug-arrow">→</div>
  <div class="bug-node">In Progress</div>
  <div class="bug-arrow">→</div>
  <div class="bug-node">Fixed</div>
  <div class="bug-arrow">→</div>
  <div class="bug-node">Verified</div>
  <div class="bug-arrow">→</div>
  <div class="bug-node good">Closed</div>
</div>

<div class="sevprio mt-2">
  <div class="card">
    <div class="eyebrow">Severity</div>
    <div class="big">How bad is the impact?</div>
    <div class="subtle">Data loss, crash, security issue, UX blocker…</div>
  </div>
  <div class="card">
    <div class="eyebrow">Priority</div>
    <div class="big">How soon must we fix it?</div>
    <div class="subtle">Depends on releases, customers, risk, alternatives…</div>
  </div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:30 Life cycle walk-through.
- New: issue reported with steps and evidence.
- Triaged: confirm reproducibility, categorize, clarify, decide next step.
- Assigned: ownership set (often dev); clear acceptance for “fixed.”
- In Progress / Fixed: implementation and evidence.
- Verified: QA/dev confirms the fix and checks for regression.
- Closed: done; optionally link to root cause or postmortem if severe.

01:30–03:30 Severity vs priority.
- Severity is impact; it should be relatively objective.
- Priority is scheduling; it is a decision balancing urgency, risk, and roadmap.
- Example: a minor UI glitch in a key executive demo may be high priority but low severity.

03:30–04:30 Quality of bug reports.
- Good bugs reduce rework: clear steps, expected vs actual, environment, screenshots/logs, minimal reproduction when possible.

04:30–05:00 Transition.
- Now place QA into the Scrum cycle: where does QA work happen sprint-to-sprint?
-->

---

# QA in Scrum
<div class="scrum-cycle">
  <div class="scrum-node">
    <div class="title">Backlog Refinement</div>
    <div class="subtle">Acceptance criteria • Risks</div>
  </div>
  <div class="scrum-arrow">→</div>
  <div class="scrum-node">
    <div class="title">Sprint Planning</div>
    <div class="subtle">Test approach • Capacity</div>
  </div>
  <div class="scrum-arrow">→</div>
  <div class="scrum-node">
    <div class="title">Daily</div>
    <div class="subtle">Unblock • Surface risk</div>
  </div>
  <div class="scrum-arrow">→</div>
  <div class="scrum-node">
    <div class="title">Build + Test</div>
    <div class="subtle">Pairing • Automation • Exploratory</div>
  </div>
  <div class="scrum-arrow">→</div>
  <div class="scrum-node">
    <div class="title">Review</div>
    <div class="subtle">Demo readiness</div>
  </div>
  <div class="scrum-arrow">→</div>
  <div class="scrum-node">
    <div class="title">Retro</div>
    <div class="subtle">Improve system</div>
  </div>
</div>

<div class="card mt-2">
  <div class="eyebrow">Definition of Done</div>
  <div class="big">Quality becomes real when “done” includes validation and learning, not just “merged.”</div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:00 Scrum is a feedback engine.
- Scrum aims to deliver increments frequently, which makes quality practices essential.

01:00–03:00 Where QA fits.
- Refinement: clarify acceptance criteria, identify edge cases, define non-functional needs.
- Planning: align on test approach, environments, and readiness signals.
- Daily: raise risks early; avoid “test crunch” at end of sprint.
- During sprint: pair with devs, validate stories as they’re built, build automation where valuable, run exploratory sessions for new features.
- Review: ensure demo is representative and stable; capture quality risks transparently.
- Retro: identify process improvements that prevent recurring issues.

03:00–04:30 Anti-patterns to call out gently.
- “QA after dev is done” creates queues and late discoveries.
- “We’ll fix next sprint” can become a quality debt spiral.

04:30–05:00 Transition.
- AI products introduce new kinds of uncertainty. Let’s discuss what changes when systems are non-deterministic.
-->

---

# QA in AI Systems
<div class="ai-diagram">
  <div class="ai-box">
    <div class="ai-title">Data</div>
    <div class="ai-sub subtle">Training • Inputs • Labels</div>
  </div>
  <div class="ai-arrow">→</div>
  <div class="ai-box">
    <div class="ai-title">Model</div>
    <div class="ai-sub subtle">Behavior may vary</div>
  </div>
  <div class="ai-arrow">→</div>
  <div class="ai-box">
    <div class="ai-title">Product</div>
    <div class="ai-sub subtle">UX • Policies • Controls</div>
  </div>
  <div class="ai-arrow">→</div>
  <div class="ai-box">
    <div class="ai-title">Monitoring</div>
    <div class="ai-sub subtle">Quality in the wild</div>
  </div>

  <div class="risk-badges mt-2">
    <div class="badge danger">Non-determinism</div>
    <div class="badge warn">Data quality</div>
    <div class="badge warn">Bias / fairness</div>
    <div class="badge warn">Model drift</div>
    <div class="badge info">Observability</div>
  </div>
</div>

<div class="card mt-2">
  <div class="eyebrow">Mindset shift</div>
  <div class="big">You validate behavior ranges and outcomes, not just exact answers.</div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:30 What changes with AI.
- Traditional systems are often deterministic: same input → same output.
- AI systems can be probabilistic and sensitive to data and context, which changes how we test and monitor.

01:30–03:30 New risk areas.
- Non-determinism: output variability; testing should consider acceptable ranges and consistency expectations.
- Data quality: “garbage in, garbage out.” Data pipelines become part of the product.
- Bias/fairness: some failures harm specific groups disproportionately; test for representative scenarios.
- Model drift: performance changes over time as inputs and environment shift.
- Monitoring: quality is continuous—measure accuracy proxies, user feedback, and safety signals post-release.

03:30–04:30 Practical implication for foundational QA.
- Define what “good” looks like: guardrails, evaluation criteria, and monitoring thresholds.
- Focus on user harm reduction and transparency about limitations.

04:30–05:00 Transition.
- Whether AI or not, quality improves when culture supports it. Let’s talk about building a quality culture loop.
-->

---

# Building Quality Culture
<div class="culture-loop">
  <div class="cl-node">Collaborate</div>
  <div class="cl-arrow">→</div>
  <div class="cl-node">Build</div>
  <div class="cl-arrow">→</div>
  <div class="cl-node">Test</div>
  <div class="cl-arrow">→</div>
  <div class="cl-node">Learn</div>
  <div class="cl-arrow">→</div>
  <div class="cl-node">Improve</div>
</div>

<div class="card mt-2">
  <div class="eyebrow">Signals of a healthy culture</div>
  <div class="culture-signals">
    <div class="signal">People surface risk early without blame.</div>
    <div class="signal">“Done” includes validation.</div>
    <div class="signal">Incidents lead to systemic fixes.</div>
    <div class="signal">Quality metrics are visible and acted on.</div>
  </div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:00 Culture is the multiplier.
- Processes and tools matter, but culture determines whether they work under pressure.

01:00–03:00 Walk the loop.
- Collaborate: shared understanding, clear criteria, pairing across roles.
- Build: engineering practices that reduce risk (reviews, feature flags, observability).
- Test: a mix of automated checks and human exploration.
- Learn: treat failures as information; capture what happened and why.
- Improve: invest in preventing recurrence (root cause, better monitoring, better requirements).

03:00–04:30 Concrete behaviors to encourage.
- Shift-left: QA involvement at refinement and design.
- Shared responsibility: devs help test; QA helps with risk framing; Scrum Masters protect time for quality.
- Psychological safety: people report issues early.

04:30–05:00 Transition.
- Let’s close with the key takeaways for the team.
-->

---

# Key Messages
<div class="takeaways">
  <div class="takeaway">
    <div class="take-icon">🧠</div>
    <div class="take-title">QA is a mindset</div>
    <div class="take-text subtle">Think in risks, outcomes, and feedback loops.</div>
  </div>
  <div class="takeaway">
    <div class="take-icon">👥</div>
    <div class="take-title">Everyone owns quality</div>
    <div class="take-text subtle">Roles differ, but ownership is shared.</div>
  </div>
  <div class="takeaway">
    <div class="take-icon">🛠️</div>
    <div class="take-title">QA makes quality real</div>
    <div class="take-text subtle">Through strategy, validation, and learning.</div>
  </div>
</div>

<div class="center-card mt-2">
  <div class="big">Next step: pick one quality improvement you can start this sprint.</div>
  <div class="subtle mt-1">Example: tighter acceptance criteria, better bug reports, a key regression check, or a monitoring alert.</div>
</div>

<!--
Speaker notes (timing: ~4–5 min)
00:00–01:00 Summarize in plain language.
- Quality is not just a QA responsibility; it is a team outcome.
- A quality mindset is about prevention, risk awareness, and fast learning.

01:00–03:00 Reinforce the three messages.
- QA is a mindset: ask what could go wrong, and make trade-offs explicit.
- Everyone owns quality: devs, QA, product, scrum—each contributes.
- QA makes quality real: by translating risk into action (tests, checks, criteria, monitoring).

03:00–04:30 Call to action (keep it practical).
- Invite the team to choose one change:
  - Add acceptance criteria that cover edge cases.
  - Add a high-value regression test.
  - Improve a brittle area through refactoring or better logs.
  - Add an alert for a user-impacting failure mode.
  - Hold a 30-minute exploratory session on the riskiest feature.

04:30–05:00 Close.
- Thank the group and open for questions.
- If time: ask for one “quality pain” people feel today and note it for follow-up.
-->
