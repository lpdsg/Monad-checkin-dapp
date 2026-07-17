# Moss Open Source Contribution Plan

## 一、Builder 身份

**Builder 身份：Dev Builder**

我目前选择 Dev Builder 作为主要发展方向，希望通过实际阅读开源项目、配置开发环境、运行示例和提交 Pull Request，逐步了解真实开源项目的开发与协作流程。

由于我目前仍处于 Web3 和开源贡献的入门阶段，本周不会直接选择开发新 Adapter 或修改 Moss 核心架构，而是先从开发者体验和文档类贡献开始，完成一次范围明确、可以验证的开源实践。

---

## 二、贡献方向

**贡献方向：完善 Moss 新人 Quick Start，并尝试提交 Documentation Pull Request**

计划参考 Moss GitHub 仓库中的 Issue：

```text
Documentation Improvement: Add a Beginner-friendly Quick Start Guide
Issue #16
```

该 Issue 希望补充以下内容：

* 分步骤的安装指南
* 最低环境要求说明
* 简单的入门示例
* 常用配置文档链接
* 环境配置常见问题

我的贡献方向是根据一个真实新手的使用过程，检查 Moss 现有文档对于新人的信息是否足够，并整理或补充一份更容易执行的 Quick Start。

---

## 三、准备完成的任务

本周计划完成以下任务：

1. 阅读 Moss 的 README、中文 README 和 CONTRIBUTING 文档。
2. 了解 Moss 项目的基础目录结构。
3. 理解 Moss 的核心工作流程：

```text
discover → load → action → simulate
```

4. 在本地配置 Moss 开发环境。
5. 尝试完成依赖安装、项目构建和官方示例运行。
6. 记录安装或运行过程中对新手不够清晰的地方。
7. 根据实际操作结果整理 Quick Start 文档。
8. 在确认内容正确后，尝试向 Moss 提交 Documentation Pull Request。

本次贡献不会修改 Moss 的核心交易逻辑，也不会直接开发新的协议 Adapter。

---

## 四、为什么选择这个方向

我选择这个方向主要有以下几个原因。

### 1. 符合我目前的能力阶段

我目前已经学习了 Solidity、Monad Testnet、智能合约部署和基础 GitHub 操作，但对 TypeScript Monorepo、MCP、Agent Workflow 和协议 Adapter 的理解还不够深入。

如果直接选择开发新 Adapter，需要进一步理解：

* 协议合约和 ABI
* 合约地址验证
* Capability 定义
* Transaction Receipt
* 交易模拟
* 端到端测试
* Moss 的架构规范

这些内容超出了我本周能够稳定完成的范围。

相比之下，Quick Start 文档既需要实际运行项目，也能让我逐步理解项目结构，更适合作为第一次贡献。

### 2. 来源于真实的新手需求

我在第一次阅读 Moss 项目时，也需要额外梳理以下问题：

* Moss 具体解决什么问题
* Moss 和普通 Web3 SDK 有什么不同
* Moss 与 MCP、AI Agent 和钱包是什么关系
* 本地运行需要哪些环境
* 第一个示例应该如何执行
* 运行报错后应该如何排查

这些问题很可能也是其他新手第一次接触 Moss 时会遇到的问题。

因此，我可以从真实新手视角检查文档，而不是只做表面的文字修改。

### 3. 可以形成完整的开源贡献闭环

这个任务可以覆盖一次基本的开源贡献流程：

```text
阅读项目
→ 查看 Issue
→ 本地运行
→ 发现文档问题
→ 创建分支
→ 修改文档
→ 自查内容
→ 提交 Pull Request
```

即使 Pull Request 最终没有被合并，我也可以学习真实开源项目的沟通、修改和审核流程。

### 4. 与 Dev Builder 身份并不冲突

虽然本次主要产出是文档，但它不是单纯整理资料。

我需要：

* 配置真实开发环境
* 阅读代码仓库
* 运行项目命令
* 验证示例
* 使用 Git 管理修改
* 根据项目规范提交 PR

因此，这项任务仍然属于 Dev Builder 的开发者体验和开源实践方向。

---

## 五、本周目标

### 核心目标

完成一份经过实际运行验证的 Moss 新手 Quick Start 文档。

### 进阶目标

在 Moss GitHub 仓库的相关 Issue 中进行沟通，并尝试提交第一次 Documentation Pull Request。

### 最低完成标准

如果本周暂时不能提交 PR，至少需要完成：

* Moss 项目环境配置
* 官方示例运行记录
* Quick Start Markdown 文档
* 对 Issue #16 的解决思路
* 后续 PR 修改清单

### 理想完成标准

本周理想状态下完成：

* Fork Moss 仓库
* 创建独立开发分支
* 完成 Quick Start 文档修改
* 运行必要的项目检查
* 提交 Pull Request
* 根据 Maintainer 意见继续修改

---

## 六、预计产出

本周预计形成以下产出。

### 1. Moss 新手入门文档

暂定名称：

```text
Moss Beginner Quick Start
```

主要内容包括：

* Moss 是什么
* 环境要求
* 安装步骤
* 项目构建
* 第一个官方示例
* 核心工作流程
* 常见问题
* 后续文档入口

### 2. 本地运行记录

记录以下内容：

* Node.js 版本
* pnpm 版本
* 项目安装结果
* 项目构建结果
* 示例运行结果
* 遇到的问题和解决方式

必要时保留终端运行截图作为完成证明。

### 3. GitHub 贡献记录

可能包括：

* Issue 讨论链接
* Fork 仓库链接
* Commit 链接
* Pull Request 链接
* Maintainer Review 记录

### 4. 开源学习总结

总结本次贡献中学到的内容：

* 如何阅读开源项目
* 如何选择适合自己的 Issue
* 如何判断任务难度
* 如何验证文档中的命令
* 如何提交 Documentation PR
* 如何根据 Review 修改内容

---

## 七、本周完成计划

### Day 1：确认贡献范围

计划完成：

* 阅读 Moss README
* 阅读中文 README
* 阅读 CONTRIBUTING
* 查看 Issue #16
* 确定 Quick Start 需要覆盖的内容

当天产出：

* Moss 项目基础认识
* 文档结构草稿
* 贡献范围说明

---

### Day 2：配置本地环境

计划完成：

* Fork Moss 仓库
* Clone 自己的 Fork
* 检查 Node.js 和 pnpm 版本
* 安装项目依赖
* 尝试构建项目

计划使用的基础命令：

```bash
git clone https://github.com/自己的用户名/moss.git
cd moss
pnpm install
pnpm build
```

当天产出：

* 环境配置记录
* 构建成功截图
* 报错及解决过程

---

### Day 3：运行官方示例

计划完成：

* 阅读 `examples` 目录
* 运行 Moss 官方示例
* 理解示例中的主要执行流程
* 记录新手容易困惑的步骤

当天产出：

* 示例运行记录
* `discover → load → action → simulate` 流程笔记
* Quick Start 示例章节草稿

---

### Day 4：编写 Quick Start

计划完成：

* 编写环境要求
* 编写安装步骤
* 编写第一个示例
* 编写核心流程说明
* 整理常见错误

当天产出：

```text
docs/quick-start.md
```

或者根据 Maintainer 建议放入其他合适位置。

---

### Day 5：验证教程内容

计划完成：

* 从头重新执行文档中的命令
* 检查路径、版本号和命令是否正确
* 检查链接是否有效
* 删除没有经过验证的内容
* 检查 Markdown 格式

当天产出：

* 可重复执行的 Quick Start
* 文档自查清单
* 最终修改版本

---

### Day 6：准备 Pull Request

计划完成：

* 创建独立分支
* 提交本地修改
* 推送到自己的 GitHub Fork
* 编写 Pull Request 描述

分支名称可以使用：

```bash
git checkout -b docs/beginner-quick-start
```

Commit 信息可以使用：

```bash
git commit -m "docs: add beginner-friendly quick start guide"
```

当天产出：

* Git Commit
* GitHub 分支
* Pull Request 草稿

---

### Day 7：提交与复盘

计划完成：

* 提交 Pull Request
* 检查自动化测试结果
* 阅读 Maintainer 的 Review
* 根据反馈修改内容
* 整理本周贡献总结

当天产出：

* Pull Request 链接
* 本周开源贡献记录
* 下一阶段学习计划

---

## 八、Pull Request 预计内容

Pull Request 预计解决以下问题：

* 新手不知道应该先安装哪些工具
* 环境版本要求不够集中
* 安装和构建步骤不够连贯
* 缺少从零开始的示例流程
* 新手遇到构建或 RPC 问题后不知道如何排查
* README 与详细文档之间缺少清晰入口

Pull Request 描述可以重点说明：

1. 本次修改解决什么问题。
2. 新增了哪些内容。
3. 实际验证了哪些命令。
4. 哪些内容没有修改。
5. 是否关联 Issue #16。

---

## 九、可能遇到的风险

### 1. Issue 已经被其他人处理

在正式修改前，我会先检查 Issue 是否已经有人认领，或者是否已经出现相关 Pull Request。

如果已有其他开发者在处理，我会考虑：

* 在 Issue 中询问是否可以协助
* Review 对方的 PR
* 补充 FAQ
* 补充中文版本
* 选择另一个小范围文档问题

### 2. 本地环境配置失败

如果完整示例暂时无法运行，我会先区分：

* Node.js 或 pnpm 版本问题
* 项目构建问题
* RPC 或网络问题
* 示例参数问题

没有实际验证成功的命令，不会直接写入正式教程。

### 3. 修改范围过大

第一次 PR 会尽量保持范围集中，不同时修改：

* 核心代码
* 多个 Adapter
* 项目架构
* 大量无关文档
* 代码格式

这样可以降低 Review 难度，也方便 Maintainer 判断修改价值。

### 4. PR 没有被合并

PR 没有立即合并不代表任务失败。

本次任务更重要的目标是完成：

* 阅读真实项目
* 理解贡献规范
* 进行本地验证
* 提交可审核的修改
* 接受并处理 Review

---

## 十、本周验收标准

本周任务满足以下条件时，可以认为贡献计划已经基本完成：

* [ ] 明确 Dev Builder 身份
* [ ] 选择具体贡献方向
* [ ] 找到对应的 GitHub Issue
* [ ] 阅读 Moss 主要文档
* [ ] Fork 并 Clone 项目
* [ ] 完成本地依赖安装
* [ ] 完成项目构建
* [ ] 至少运行一个官方示例
* [ ] 完成 Quick Start 文档
* [ ] 验证文档中的命令
* [ ] 形成 Commit 或 Pull Request
* [ ] 完成本周贡献复盘

---

## 十一、下一阶段计划

完成 Quick Start 文档贡献后，我计划逐步向更偏开发的任务过渡。

推荐顺序为：

```text
文档和环境配置
→ Example 代码阅读
→ 测试用例补充
→ 小型 Bug 修复
→ 完善 Demo
→ 理解现有 Adapter
→ 尝试开发新的 Adapter
```

下一阶段可以重点阅读：

* `examples`
* `packages/core`
* `packages/system`
* `packages/erc`
* `packages/simulator`
* 已有协议 Adapter

通过阅读已有实现和测试，逐步为真正的代码类 Pull Request 做准备。

---

## 十二、总结

本周我将以 Dev Builder 身份参与 Moss 开源项目，贡献方向是完善新人 Quick Start 和开发者体验。

选择这一方向，是因为它符合我当前的技术基础，同时能够让我完整经历项目阅读、环境配置、示例运行、Git 分支管理、文档修改和 Pull Request 提交过程。

本周的主要目标不是立即修改 Moss 的核心代码，而是先完成一项真实、具体、经过验证的贡献，为后续修复 Bug、完善 Demo 和开发 Adapter 建立基础。
