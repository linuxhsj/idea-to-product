---
name: idea-to-product
description: Use when user wants to turn an idea into a shipped product — activate the 7-step workflow before any code or implementation
---

# Idea to Product — Workflow Activated

**Announce:** "I'm using the idea-to-product skill."

**5 HARD-GATE checkpoints — you MUST confirm each before proceeding:**
1. Requirements doc (Step 2)
2. Competitor learnings table (Step 3)
3. UI design direction (Step 4)
4. Task plan with verify fields (Step 5)
5. All tests pass (Step 7)

**Do not write any code until all 5 checkpoints are confirmed.**

---

## Step 1 — Check for existing solutions

Ask: "Before we build — is there free software that already does [the idea]?"

- Search claude.ai or doubao.com with web search
- If yes → done, use it. No build needed.
- If no or too expensive → proceed to Step 2.

## Step 2 — Clarify requirements (HARD-GATE)

Use `superpowers:brainstorming`. Ask one question at a time:
- Who is this for?
- What problem does it solve?
- What counts as success?

Write the requirements into `PROJECT.md`.

**[HARD-GATE: Do not proceed until user confirms the requirements doc.]**

## Step 3 — Deep competitor research (HARD-GATE)

Clone top 2-3 GitHub repos for similar products.
Run each one. Read the code. Study what they do well and poorly.

Write a learnings table:

| Competitor | Strengths | Weaknesses | What we'll borrow | What we'll avoid |
|------------|-----------|------------|-------------------|-----------------|

**[HARD-GATE: Show the learnings table. Do not proceed until user approves it.]**

## Step 4 — Design UI (HARD-GATE)

Open awesome-design: https://github.com/VoltAgent/awesome-design-md
Apply the design spec + Do's & Don'ts.

Add constraint: "Core actions within 3 steps, ≤5 menu items, plain-language buttons"

**[HARD-GATE: Show the UI design. Do not proceed until user approves the design direction.]**

## Step 5 — Break into tasks (HARD-GATE)

Use `superpowers:writing-plans`. Each task MUST have:
- `name:` — what to do
- `action:` — exact instructions
- `verify:` — how to confirm it works
- `done:` — what done looks like

**[HARD-GATE: Show the full task breakdown. Do not proceed until user approves the plan.]**

## Step 6 — Execute step by step

Use `superpowers:executing-plans` or `superpowers:subagent-driven-development`.
For each task: do it → run verify → show result → user confirms → next.

## Step 7 — Test (HARD-GATE)

TDD: write test rules before coding.
E2E: run full user journey before shipping.

**[HARD-GATE: All TDD tests must pass. E2E flow must run end-to-end. Do not ship until both pass.]**
