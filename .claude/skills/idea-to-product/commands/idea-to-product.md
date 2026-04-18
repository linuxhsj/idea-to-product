---
name: idea-to-product
description: Use when user wants to turn an idea into a shipped product using AI tools, especially after failed attempts with Cursor/Cursor/Claude Code/OpenClaw where output was messy, broken, or ugly
---

# Idea to Product — Workflow Activated

**Announce:** "I'm using the idea-to-product skill."

**REQUIRED:** Follow all 7 steps in order. Do not skip ahead. Do not write code until Step 6.

---

## Step 1 — Check for existing solutions

Ask the user: "Before we build anything — have you searched for existing free tools that do [the idea]?"

If they say no → ask them to search in Claude or Doubao first.
If existing tool exists → done, no build needed.
If no tool or too expensive → proceed to Step 2.

## Step 2 — Clarify requirements

Use `superpowers:brainstorming` skill. Ask追问:
- Who is this for?
- What problem does it solve?
- What counts as success?

**HARD-GATE:** Do not proceed until the user confirms the requirements doc.

## Step 3 — Research competitors

Use Claude/Doubao with web search. Ask:
"Search GitHub and web for [idea]. Recent updates, high stars. List pros and cons."

User confirms the research → proceed.

## Step 4 — Design UI

Open awesome-design: https://github.com/VoltAgent/awesome-design-md
Copy content, paste to AI. Add constraint:
"Core actions within 3 steps, ≤5 menu items, plain-language buttons"

## Step 5 — Break into tasks

Use `superpowers:writing-plans` skill. Confirm plan with user.

## Step 6 — Execute step by step

Use `superpowers:executing-plans` or `superpowers:subagent-driven-development`.
One feature at a time. Confirm each step.

## Step 7 — Test

TDD: write test rules before coding.
E2E: run full user journey before shipping.
