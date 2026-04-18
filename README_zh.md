**English**: [README.md](./README.md)

# 从想法到产品

**用 AI 把你的想法变成可上线的产品——不混乱、不烂尾。**

AI 编程工具很强。但没有方法论，结果往往是：代码乱 → 界面丑 → 修不完 → 放弃。

这套工作流解决的就是这个问题。

---

## 问题出在哪

```
你的想法
    ↓
让 AI 直接写代码
    ↓
报错 → 界面丑 → 继续改 → 放弃
```

**90% 的 AI 项目失败，根源是：跳过了规划阶段。**

---

## 工作流：7 步走

```
┌─────────────────────────────────────────────┐
│  1. 有没有现成的？── 有 → 直接用，结束       │
│       没有 / 太贵                             │
│              ↓                               │
│  2. 追问需求  ← HARD-GATE                  │
│       你确认需求文档                          │
│              ↓                               │
│  3. 深入调研竞品                              │
│       克隆竞品、跑起来、研究代码              │
│              ↓                               │
│  4. 设计界面  ← HARD-GATE                  │
│       你确认设计方向                          │
│              ↓                               │
│  5. 拆解任务  ← HARD-GATE                  │
│       你批准完整任务计划                      │
│              ↓                               │
│  6. 分步执行                                  │
│       每步做完展示结果，等你确认              │
│              ↓                               │
│  7. 测试  ← HARD-GATE                      │
│       TDD + E2E 全部通过才能上线             │
│              ↓                               │
│          上线 ✅                             │
└─────────────────────────────────────────────┘
```

### 每一步做什么

| 步骤 | 做什么 | 用什么 |
|------|--------|--------|
| 1 | 搜有没有免费工具 | claude.ai / doubao.com |
| 2 | AI 追问：谁用、解决什么、怎么算成功，写入 `PROJECT.md` | `/superpowers:brainstorm` |
| 3 | 克隆 top 竞品，跑起来，深入研究代码 | Git + 联网搜索 |
| 4 | 设计规范 + Do's & Don'ts | awesome-design |
| 5 | 每个任务带 `verify:` 字段，拆成 2-5 分钟，你批准 | `/superpowers:write-plan` |
| 6 | AI 做一步 → 跑 verify → 你确认 → 下一步 | `/superpowers:execute-plan` |
| 7 | 先写规则再实现，跑通完整路径 | TDD + E2E |

---

## 核心原则

> **AI 先出方案，你确认了，它再动手。**

顺序就是方法。不是建议，是原则。

---

## 快速上手

**第一步 — 安装（30 秒）：**

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/linuxhsj/idea-to-product/main/install.sh)"
```

自动安装：`superpowers`（完整仓库，14个skill）+ `awesome-design`（68个设计规范）+ `idea-to-product` skill。

**手动安装（30 秒）：**

创建 `~/.claude/skills/idea-to-product/`，把 SKILL.md 放进去。

**第二步 — 激活（选你的工具）：**

| 工具 | 如何激活 |
|------|---------|
| **Claude Code** | Skills 自动识别，直接输入 `/idea-to-product [你的想法]` |
| **OpenClaw** | 输入 `/idea-to-product [你的想法]` |
| **Cursor** | 设置 → Rules → 粘贴 SKILL.md 内容 |
| **Trae** | 设置 → AI → 粘贴 SKILL.md 作为系统提示 |
| **Windsurf** | 设置 → Workspace → 粘贴 SKILL.md |
| **任意 AI** | 复制 SKILL.md 内容，粘贴进对话 |
| Trae | 设置 → AI → 系统提示 → 粘贴 SKILL.md |
| Windsurf | 设置 → Workspace → 粘贴 SKILL.md |
| 任意 AI 工具 | 复制 SKILL.md，粘贴进对话 |

**激活方式：**

```
/idea-to-product [你的想法]
```

或粘贴：

```
Follow the idea-to-product skill.
My idea: [描述你想做什么]
```

---

## 激活后会发生什么

AI 不会上来就写代码。它先问你问题。

**示例 — "我想做一个番茄钟"：**

```
AI: "开始之前，先问几个问题：
  1. 给自己用还是给团队用？
  2. 它解决你什么问题？
  3. 怎么算成功？"

你: 回答问题

AI: "明白了，需求是：[需求文档]"
你: 确认或纠正

AI: "现在去研究竞品。我来克隆 top 2 的仓库，
  跑起来，研究它们的代码..."

AI: "跑了 Forest 和 Pomodoro.js 后：
  - Forest: 界面漂亮 ✅，无历史记录 ❌ → 学习它的计时器交互
  - Pomodoro.js: 有历史 ✅，界面丑 ❌ → 不学它的设计
  竞品学习表：[表格]"

你: 确认竞品调研结果

AI: "基于 awesome-design 设计规范设计界面..."
你: 审阅并确认

AI: "任务分解如下，每步有 verify 字段：
  [任务1: 安装依赖 — verify: npm install 成功]
  [任务2: 计时器核心 — verify: 点开始显示倒计时]
  ..."

你: 批准计划

AI: [执行任务1，跑 verify，展示结果，等你确认]
...如此一步步进行
```

你全程掌控：AI 问 → 你答 → AI 研究 → 你确认 → AI 建造。

---

## 快捷指令

```
/idea-to-product [你的想法]
```

直接一句话激活全套流程，不需要粘贴大段文字。

> 注：快捷指令需要工具支持 slash commands。Claude Code、OpenClaw 等主流工具均支持。

---

## 这套方法有什么不同

| | AI 直接用 | superpowers | get-shit-done | idea-to-product | 好处 |
|---|---|---|---|---|---|
| 追问需求 | ❌ | ❌ | ❌ | ✅ Step 2 | 知道要做什么，不用返工 |
| 搜竞品 | ❌ | ❌ | ❌ | ✅ Step 3 | 不重复造轮子 |
| UI 规范 | ❌ | ⚠️ | ❌ | ✅ awesome-design | 界面专业好看 |
| 测试要求 | ❌ | ⚠️ | ❌ | ✅ TDD + E2E | 上线有信心，质量有保证 |
| 中文支持 | ❌ | ❌ | ❌ | ✅ | 中文用户零门槛 |
| 上手难度 | 低 | 高 | 低 | 低 | 易于上手 |
| 专注领域 | — | 全阶段开发 | 执行阶段 | 想法→产品全链路 | 从想法到产品的完整路径 |

**竞品定位：** superpowers 太重，get-shit-done 缺少规划 —— idea-to-product 刚好在中间，完整但不复杂。

---

## 支持哪些工具

支持 skills、斜杠指令或系统提示的 AI 编程工具都能用。

| 工具 | 安装方式 |
|------|---------|
| Claude Code | `~/.claude/skills/idea-to-product/SKILL.md` |
| OpenClaw | `~/.openclaw/skills/idea-to-product/SKILL.md` |
| Cursor | 设置 → Rules → 粘贴 SKILL.md |
| Trae | 设置 → AI → 系统提示 → 粘贴 SKILL.md |
| Windsurf | 设置 → Workspace → 粘贴 SKILL.md |
| 任意 AI 工具 | 复制 SKILL.md，粘贴进对话 |

> **无需安装**，粘贴即用。

---

## License

MIT
