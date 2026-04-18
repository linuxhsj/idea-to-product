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
│  1. 有没有现成的？── 有 → 直接用，结束      │
│       没有 / 太贵                             │
│              ↓                               │
│  2. 追问需求  ← 硬关卡（HARD-GATE）         │
│       (AI 追问：给谁用？解决什么？)          │
│              ↓                               │
│  3. 调研竞品                                  │
│       (GitHub + 联网搜索)                   │
│              ↓                               │
│  4. 设计界面  (awesome-design规范)          │
│              ↓                               │
│  5. 拆解任务  ← /write-plan                │
│       (每步 2-5 分钟)                       │
│              ↓                               │
│  6. 分步执行  ← /execute-plan              │
│       (每步做完等你确认)                     │
│              ↓                               │
│  7. 测试  (TDD + E2E)                      │
│              ↓                               │
│          上线 ✅                             │
└─────────────────────────────────────────────┘
```

### 每一步做什么

| 步骤 | 做什么 | 用什么 |
|------|--------|--------|
| 1 | 搜有没有免费工具 | claude.ai / doubao.com |
| 2 | AI 追问：谁用、解决什么、怎么算成功 | `/superpowers:brainstorm` |
| 3 | GitHub + 联网搜索同类项目 | 联网搜索 |
| 4 | 设计规范 + 3 步内完成核心操作 | awesome-design |
| 5 | 拆成 2-5 分钟的小任务，你批准 | `/superpowers:write-plan` |
| 6 | AI 做一步 → 你确认 → 下一步 | `/superpowers:execute-plan` |
| 7 | 先写规则再实现，跑通完整路径 | TDD + E2E |

---

## 核心原则

> **AI 先出方案，你确认了，它再动手。**

顺序就是方法。不是建议，是原则。

---

## 怎么用（1 分钟激活）

```
打开：Claude Code / OpenClaw / Cursor / Trae / Windsurf

把下面这句话发给 AI：

  Follow the idea-to-product skill.
  My idea: [描述你想做什么]

就行了，AI 会带你走完 7 步。
```

---

## 这套方法有什么不同

| | AI 直接用 | 这套方法 |
|---|---|---|
| 开始写代码 | 直接开始 | 你批准方案之后 |
| 需求 | "做着看吧" | AI 追问，你确认 |
| 界面 | AI 随便做 | awesome-design规范 |
| 任务 | 一个大 prompt | 每步 2-5 分钟，看得见进度 |
| 测试 | 跳过 | 每步 TDD + E2E |
| 结果 | 烂尾 / 丑 | 上线 + 测试通过 |

---

## 支持哪些工具

支持 skills、斜杠指令或系统提示的 AI 编程工具都能用。

| 工具 | 怎么激活 |
|------|---------|
| Claude Code | 把 SKILL.md 放进 skills 目录 |
| OpenClaw | 告诉它："Follow the idea-to-product skill" |
| Cursor | 粘贴 SKILL.md 内容 |
| Trae | 粘贴 SKILL.md 作为系统提示 |
| Windsurf | 粘贴 SKILL.md 作为工作区说明 |
| 任意 AI 工具 | 复制 SKILL.md，粘贴进对话 |

> **无需安装**，粘贴即用。

---

## 引用工具

| 工具 | 用途 |
|------|------|
| `/superpowers:brainstorm` | 追问需求、澄清问题 |
| `/superpowers:write-plan` | 把需求拆成 2-5 分钟的小任务 |
| `/superpowers:execute-plan` | 分步执行，每步确认 |
| [awesome-design](https://github.com/VoltAgent/awesome-design-md) | AI UI 设计规范，让 AI 输出专业界面 |
| [Claude](https://claude.ai) | 联网搜索 + 竞品调研 |
| [豆包](https://doubao.com) | 中文联网搜索 + 竞品调研 |
| [Superpowers](https://github.com/obra/superpowers) | 本方法论构建在其之上 |

---

## License

MIT
