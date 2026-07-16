# Moss 开源项目探索日志

## 1. 项目基本信息

- 项目名称：Moss
- 项目地址：https://github.com/nishuzumi/moss
- 主要语言：TypeScript，少量 Solidity
- 项目定位：为 Monad 上的 DApp 和协议交互提供统一的 Agent 调用能力
- 当前状态：Alpha

## 2. README 阅读记录

Moss 主要解决 AI Agent 直接操作链上协议时，需要手动处理合约地址、ABI、calldata、Token 精度和多步交易的问题。

项目将链上交互统一为：

discover → load → action → simulate

其中 discover 用于查找能力，load 用于查看参数和风险，action 用于生成未签名交易，simulate 用于模拟并检查交易结果。

Moss 本身不会替用户签名和发送交易，最终交易仍然需要由用户的钱包确认。

## 3. 项目目录结构

```text
moss/
├── .github/
├── docs/
├── examples/
├── packages/
├── README.md
├── README.zh-CN.md
├── CONTRIBUTING.md
├── SECURITY.md
├── package.json
└── pnpm-workspace.yaml
```
- > .github/：GitHub 协作和自动化配置。
- > docs/：入门文档、工具说明和架构决策记录。
- > examples/：项目使用示例。
- > packages/：项目核心代码。
- > CONTRIBUTING.md：贡献流程。
- > SECURITY.md：安全边界和漏洞报告说明。

## 4. Docs 阅读记录
我主要查看了 Getting Started、MCP Tools 和 ADR。

Getting Started 面向第一次运行项目的开发者；MCP Tools 解释四个核心工具的参数和返回结果；ADR 记录 Maintainer 在设计项目时作出的架构选择及其取舍。

我发现项目文档不仅告诉开发者“如何使用”，也解释了“为什么这样设计”。

## 5. Issues
Issues 用来记录 Bug、新功能、文档优化和待完成任务。

Maintainer 会通过标签对 Issue 分类，例如 enhancement 表示功能改进，ready-for-agent 表示需求描述得比较完整，可以开始实现。

这使贡献者能够快速判断一个任务的类型和当前状态。

## 6. Pull Requests
Pull Request 是开发者提交代码修改的入口。

我查看了 PR 的 Conversation、Commits、Files changed 和 Checks，理解了一个修改通常会经过：

Issue → 编码实现 → PR → 自动化检查 → Code Review → 合并或关闭

Maintainer 不只是编写代码，也需要审核修改、检查测试并控制项目质量。

## 7. Discussions
我检查了项目的 Discussions，但当前仓库没有启用独立的 GitHub Discussions。

项目相关讨论主要通过 Issues、Pull Requests、文档和其他社区渠道进行。

## 8. 我感兴趣的问题
我感兴趣的是：

Tooling: Fetch verified ABIs through the Monadscan API

这个功能希望通过 Monadscan API 自动获取已经验证的合约 ABI。

我最近正在学习在 Monad Testnet 上部署和调用 Solidity 合约，因此已经接触到合约地址和 ABI。自动获取 ABI 可以减少手动查找和复制的过程，也能让 Moss 更方便地识别和调用链上合约，所以这个功能与我的学习方向比较相关。

目前我还不能直接完成这个功能，但我可以继续了解：

1.ABI 的具体结构。
2.Monadscan API 如何使用。
3.Moss 中协议和合约信息是如何加载的。
4.获取 ABI 后应该如何验证和缓存。

## 9. 我的发现
通过这次探索，我发现真实开源项目不只是代码集合。
Maintainer 需要同时管理：

- 项目目标和使用说明；
- 代码目录和模块边界；
- Issue 分类和任务优先级；
- PR 审核和自动化检查；
- 贡献流程；
- 安全风险；
- 版本发布；
- 开发者文档。

我以前阅读 GitHub 项目时主要只看 README 和源码，但这次发现 Issues、Pull Requests、CONTRIBUTING、SECURITY 和 ADR 同样能够帮助我理解一个项目是如何被长期维护的。
