---
name: idea-to-product
description: Use when user wants to turn an idea into a shipped product — activate the 7-step workflow before any code or implementation
---

# Idea to Product — Workflow Activated

**Announce:** "I'm using the idea-to-product skill."

**Two absolute HARD-GATEs — no exceptions:**
- Step 2 — Requirements: Must追问, user must confirm
- Step 7 — Testing: TDD + E2E, both must pass before shipping

**Three flexible HARD-GATEs — must do, but user can choose approach:**
- Step 3 — Competitor research: Must do. User can set focus criteria.
- Step 4 — UI design: Must do. User can use their own spec instead of awesome-design.
- Step 5 — Task plan: Must do. User can choose format.

---

## Step 1 — Check for existing solutions

Ask: "Before we build — is there free software that already does [the idea]?"

- If yes → done, use it. No build needed.
- If no or too expensive → proceed to Step 2.

## Step 2 — Clarify requirements (HARD-GATE, absolute)

Use `superpowers:brainstorming`. Ask one question at a time:
- Who is this for?
- What problem does it solve?
- What counts as success?

Write the requirements into `PROJECT.md`.

**[HARD-GATE: Do not proceed until user confirms the requirements doc.]**

## Step 3 — Deep competitor research (HARD-GATE)

Must be done. Prioritize repos with:
- Stars ≥ 1k (higher = more community validated)
- Updated in last 6 months
- Active issues and discussion

Clone top 2-3 matching repos. Run them. Read the code.
Write learnings table:

| Competitor | Stars | Last updated | What it does well | What it does poorly | What we'll borrow | What we'll avoid |
|------------|-------|-------------|-------------------|---------------------|-------------------|-----------------|

User can add focus criteria: e.g. "focus on mobile-first repos only"

**[HARD-GATE: Show the learnings table. Do not proceed until user approves it.]**

## Step 4 — Design UI (HARD-GATE)

Must be done. User can bring their own design spec.

- If user has a spec → follow it exactly
- If no spec → use awesome-design by default

Always add: "Core actions within 3 steps, ≤5 menu items, plain-language buttons"

Do's & Don'ts apply to every design regardless of spec source.

**[HARD-GATE: Show the UI design. Do not proceed until user approves the design direction.]**

## Step 5 — Break into tasks (HARD-GATE)

Use `superpowers:writing-plans`. Each task:
- `name:` — what to do
- `action:` — exact instructions
- `verify:` — how to confirm it works
- `done:` — what done looks like

**[HARD-GATE: Show the full task breakdown. Do not proceed until user approves the plan.]**

## Step 6 — Execute step by step

Do task → run verify → show result → user confirms → next.

## Step 7 — Test (HARD-GATE, absolute)

TDD: write test rules before coding.
E2E: run full user journey before shipping.

**[HARD-GATE: All TDD tests must pass. E2E flow must run end-to-end. Do not ship until both pass.]**
