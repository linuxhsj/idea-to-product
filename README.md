# Idea to Product

**Turn your idea into a shipped product using AI — without the chaos.**

> "I spent 10+ years as a developer. When AI coding tools came out, I thought I'd finally build anything I wanted. Then every project turned into: prompt → errors → ugly UI → patches → give up."
>
> This methodology is what I learned from that failure.

---

## The Problem

```
Idea → Let AI code immediately → Errors → Fixes → Ugly UI
→ More fixes → Give up
```

**90% of AI-assisted project failures share one root cause:** skipping the planning phase. AI goes off-track, wastes time, produces messy output — and you end up frustrated.

---

## The Method

```
Idea
  │
  ▼
[1] Existing tool? ── Yes → Use it. Done.
  │ No / too expensive
  ▼
[2] Clarify requirements  (/superpowers:brainstorm)
  │ AI asks: who, what, success criteria
  ▼
[3] Research competitors  (Claude web search + GitHub)
  │ Save days of duplicate work
  ▼
[4] Design UI
  │  awesome-design规范 + 3-step max UX rule
  ▼
[5] Break into tasks  (/superpowers:write-plan)
  │  Small steps, each 2-5 min
  ▼
[6] Execute step-by-step  (/superpowers:execute-plan)
  │  Confirm each step before next. Zero rework.
  ▼
[7] Test  (TDD + E2E)
  │  Test rules first, then full user flow
  ▼
Ship ✅
```

---

## Quick Start

**Step 1 — Check for existing tools**
```
Open claude.ai or doubao.com
Ask: "Is there free software that does [your idea]?"
```

**Step 2 — If you need to build**
```
Open any AI coding tool:
  Claude Code / OpenClaw / Cursor / Trae / Windsurf

Paste this to activate the workflow:

  Use the idea-to-product skill:
  ~/.claude/skills/idea-to-product/SKILL.md

Then describe your idea.
```

**Step 3 — Follow the 7 steps**
AI will guide you through each step. Confirm each phase before moving on.

---

## The Iron Rule

> **AI produces a plan first — you confirm — AI executes.**

The order is the method. Not a suggestion.

---

## Compatible Tools

Works with any AI coding tool that supports skills, slash commands, or system instructions.

| Tool | How to activate |
|------|----------------|
| **Claude Code** | Skills auto-discovered from `~/.claude/skills/` |
| **OpenClaw** | Tell it: "Use the idea-to-product skill" |
| **Cursor** | Paste SKILL.md content, or use plugin manager |
| **Trae** | Paste SKILL.md as system instructions |
| **Windsurf** | Paste SKILL.md as workspace instructions |
| **Any AI tool** | Copy `SKILL.md` content, paste as your first message |

> **No installation required.** Just paste. Works immediately.

---

## Key Principles

### 1. Check existing tools first
Trello, Notion, Linear — free options exist for 80% of common use cases. Ask AI to search before building.

### 2. AI drafts, you approve
AI produces a requirements doc → you read it → you confirm → AI implements. Never the other way around.

### 3. Build one feature at a time
Add task → test it → mark complete → next. Never batch 5 features and wonder why nothing works.

### 4. Test like a real user
TDD: write the rule before implementing it.
E2E: run the full user journey end-to-end before shipping.

---

## What Makes This Different

| | Traditional dev | AI coding tools (raw) | This method |
|---|---|---|---|
| Start coding | After spec is written | Immediately | After you approve the spec |
| Requirements | Formal spec doc | "I'll figure it out" | AI追问, you confirm |
| UI design | Designer → handoff | AI does whatever | awesome-design规范 |
| Task breakdown | Jira / tickets | One big prompt | 2-5 min bite-sized steps |
| Testing | Optional afterthought | Skipped | TDD + E2E every step |
| Result | Months | Broken / ugly | Shipped, tested |

---

## Referenced Tools

| Tool | What it's for |
|------|--------------|
| `/superpowers:brainstorm` | Requirements clarification,追问用户需求 |
| `/superpowers:write-plan` | Break requirements into 2-5 min tasks |
| `/superpowers:execute-plan` | Execute tasks step-by-step, confirm each |
| [awesome-design](https://github.com/VoltAgent/awesome-design-md) | AI UI design规范，让AI输出专业界面 |
| [Claude](https://claude.ai) | Web search + competitor research |
| [Doubao](https://doubao.com) | Chinese web search + competitor research |
| [Superpowers](https://github.com/obra/superpowers) | The skills framework this methodology is built on |

---

## Related Repositories

Methodology & workflow repos worth studying:

| Repo | Stars | What it teaches |
|------|-------|----------------|
| [obra/superpowers](https://github.com/obra/superpowers) | 158k | Agentic skills framework + SDLC methodology |
| [gsd-build/get-shit-done](https://github.com/gsd-build/get-shit-done) | 54k | Spec-driven dev for Claude Code, anti-enterprise |
| [shanraisshan/claude-code-best-practice](https://github.com/shanraisshan/claude-code-best-practice) | 46k | 82 expert tips for Claude Code |
| [forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills) | 55k | Single CLAUDE.md from Karpathy's LLM learnings |
| [coleam00/context-engineering-intro](https://github.com/coleam00/context-engineering-intro) | 13k | Context Engineering — the discipline behind this method |
| [davidkimai/Context-Engineering](https://github.com/davidkimai/Context-Engineering) | 8.7k | Academic-grade context engineering handbook |
| [sanjeed5/awesome-cursor-rules-mdc](https://github.com/sanjeed5/awesome-cursor-rules-mdc) | 3.5k | 200+ Cursor .mdc rules for every use case |
| [NeekChaw/RIPER-5](https://github.com/NeekChaw/RIPER-5) | 2.6k | Chinese super-rule for Cursor AI |
| [e2b-dev/awesome-ai-agents](https://github.com/e2b-dev/awesome-ai-agents) | 27k | Curated list of autonomous AI agents |
| [dair-ai/Prompt-Engineering-Guide](https://github.com/dair-ai/Prompt-Engineering-Guide) | 73k | Definitive prompt + context engineering guide |

Commercial AI coding tools: [Cursor](https://cursor.com) · [Windsurf](https://windsurf.com) · [Bolt.new](https://bolt.new) · [v0.dev](https://v0.dev) · [Lovable](https://lovable.dev) · [Devin](https://devin.ai) · [Claude Code](https://claude.ai/claude-code)

---

## License

MIT
