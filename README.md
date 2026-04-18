**中文**：[README_zh.md](./README_zh.md)

# Idea to Product

**Turn your idea into a shipped product — without the chaos.**

AI coding tools are powerful. But without a method, they produce: messy code → broken UI → endless patches → give up.

This is the workflow that fixes that.

---

## The Problem

```
Your idea
    ↓
Let AI code immediately
    ↓
Errors → Ugly UI → More fixes → Give up
```

**90% of AI project failures: skipped planning.**

---

## The Workflow

```
┌─────────────────────────────────────────────┐
│  1. Existing tool?  ── Yes → Done          │
│       No / too expensive                     │
│              ↓                               │
│  2. Clarify requirements  ← HARD-GATE       │
│       (brainstorm追问)                       │
│              ↓                               │
│  3. Research competitors                     │
│       (GitHub + Web search)                  │
│              ↓                               │
│  4. Design UI  (awesome-design规范)          │
│              ↓                               │
│  5. Break into tasks  ← /write-plan          │
│       (2-5 min per step)                     │
│              ↓                               │
│  6. Execute step-by-step ← /execute-plan     │
│       (confirm each step)                    │
│              ↓                               │
│  7. Test  (TDD + E2E)                        │
│              ↓                               │
│          Ship ✅                             │
└─────────────────────────────────────────────┘
```

### What each step does

| Step | What | Tool |
|------|------|------|
| 1 | Check if free tools already exist | claude.ai / doubao.com |
| 2 | Clarify who/what/success criteria — write it down | `/superpowers:brainstorm` |
| 3 | Search GitHub + web for similar projects | Web search |
| 4 | Apply design spec + 3-click UX rule | awesome-design |
| 5 | Break into 2-5 min tasks — you approve | `/superpowers:write-plan` |
| 6 | AI does one task → you confirm → next | `/superpowers:execute-plan` |
| 7 | Write test rules first, then run full flow | TDD + E2E |

---

## The Iron Rule

> **AI produces a plan → you confirm → AI executes.**

The order IS the method. Not optional.

---

## Quick Start

**One-command setup:**

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/linuxhsj/idea-to-product/main/install.sh)"
```

This installs everything automatically:
- `superpowers` — provides `/superpowers:brainstorm`, `/write-plan`, `/execute-plan`
- `awesome-design` — UI design spec for professional-looking interfaces
- `idea-to-product` skill — this workflow

**Manual install (30 seconds):**

| Tool | Where to put SKILL.md |
|------|-----------------------|
| Claude Code | `~/.claude/skills/idea-to-product/SKILL.md` |
| OpenClaw | `~/.openclaw/skills/idea-to-product/SKILL.md` |
| Cursor | Settings → Rules → paste SKILL.md content |
| Trae | Settings → AI → System Instructions → paste SKILL.md |
| Windsurf | Settings → Workspace → paste SKILL.md |
| Any AI | Copy SKILL.md, paste as your first message |

**Activate:**

```
/idea-to-product [your idea]
```

Or paste:

```
Follow the idea-to-product skill.
My idea: [describe what you want to build]
```

---

## What Happens After You Activate

The AI doesn't start coding immediately. It asks questions first.

**Example — "I want to build a Pomodoro timer":**

```
AI: "Before I start building — a few quick questions:
  1. Is this for personal use or a team?
  2. What problem does it solve for you?
  3. What does success look like?
     (Does it need history? Notifications? Export?)"

You: Answer the questions

AI: "Got it. Here's what I understand you need:
  [Requirements doc — read and confirm]"

You: Confirm or correct

AI: "Now let me search for existing solutions..."

...and so on, step by step.
```

You stay in control. AI asks → you answer → AI does → you confirm.

---

## Shortcut Command

```
/idea-to-product [your idea]
```

One command activates the full workflow. No need to paste long text.

> Note: Requires tools that support slash commands. Claude Code, OpenClaw, and other major tools support this.

---

## What Makes This Different

| | Raw AI | superpowers | get-shit-done | idea-to-product | Benefit |
|---|---|---|---|---|---|
| Clarify requirements | ❌ | ❌ | ❌ | ✅ Step 2 | Know what to build — no rework |
| Research competitors | ❌ | ❌ | ❌ | ✅ Step 3 | Don't build what already exists |
| UI design规范 | ❌ | ⚠️ | ❌ | ✅ awesome-design | Professional-looking UI |
| Testing required | ❌ | ⚠️ | ❌ | ✅ TDD + E2E | Ship with confidence, quality guaranteed |
| Chinese support | ❌ | ❌ | ❌ | ✅ | Zero barrier for Chinese users |
| Learning curve | Low | High | Low | Low | |
| Focus | — | Full dev lifecycle | Execution only | Idea → Shipped | |

**vs. competitors:** superpowers is too broad, get-shit-done skips planning — idea-to-product sits in the middle with a complete end-to-end path.

---

## Compatible Tools

Any AI coding tool that supports skills, slash commands, or system instructions.

| Tool | How to install |
|------|---------------|
| Claude Code | `~/.claude/skills/idea-to-product/SKILL.md` |
| OpenClaw | `~/.openclaw/skills/idea-to-product/SKILL.md` |
| Cursor | Settings → Rules → paste SKILL.md |
| Trae | Settings → AI → System Instructions → paste SKILL.md |
| Windsurf | Settings → Workspace → paste SKILL.md |
| Any AI | Copy SKILL.md, paste as first message |

---

## Referenced Tools

| Tool | Use for |
|------|---------|
| `/superpowers:brainstorm` | Clarify requirements |
| `/superpowers:write-plan` | Break into tasks |
| `/superpowers:execute-plan` | Execute step-by-step |
| [awesome-design](https://github.com/VoltAgent/awesome-design-md) | Professional UI design |
| [Claude](https://claude.ai) | Competitor research |
| [Doubao](https://doubao.com) | Chinese competitor research |
| [Superpowers](https://github.com/obra/superpowers) | Skills framework this is built on |

---

## License

MIT
