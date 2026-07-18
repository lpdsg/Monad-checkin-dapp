# Monad Check-in DApp

这是我在 Web3 Builder 学习过程中开发的 Monad 链上每日打卡与连续签到项目。

## 项目目标

通过该项目学习并实践：

- Solidity 智能合约开发
- Monad Testnet 合约部署
- React 前端开发
- MetaMask 钱包连接
- 前端与智能合约交互
- GitHub 项目协作
- AI 辅助开发与人工核查

## Week 2 主方向

我选择的主方向是：

**Dev Builder**

具体定位：

**Web3 应用开发，偏全栈和链上数据方向。**

## 当前技术路线

```text
React
+ MetaMask
+ Solidity
+ Monad
+ Spring Boot
+ MySQL
+ 链上数据看板
```

Week 2 优先完成：
```text
React + MetaMask + Solidity + Monad
```
Spring Boot、MySQL 和链上数据看板将在后续阶段逐步加入。

## 当前进度

### 已完成

- [x] 创建课程专用钱包
- [x] 配置 Monad Testnet
- [x] 完成测试网链上交易
- [x] 编写 CheckIn Solidity 合约
- [x] 在 Remix VM 中部署和测试合约
- [x] 完成重复签到测试
- [x] 完成多账户数据隔离测试
- [x] 完成 AI 辅助开发方案
- [x] 完成 AI Collaboration Log
- [x] 将 CheckIn.sol 部署到 Monad Testnet
- [x] 记录合约地址和部署交易 Hash
- [x] 整理 Week 2 Dev Portfolio Pack

### Week 2 学习记录
Role Choice Card
Week 2 Role Log
AI Collaboration Log
Project Roadmap

## 如何查看

目前已经跑通 Solidity 智能合约部分，尚未完成 React 前端。

可以通过以下方式检查项目：

1. 查看 [`contracts/CheckIn.sol`](./contracts/CheckIn.sol) 智能合约源码。
2. 将合约复制到 Remix IDE 中进行编译和部署。
3. 在 Remix VM 中调用 `checkIn()` 完成签到。
4. 使用 `hasCheckedInToday(address)` 查询签到状态。
5. 查看仓库中的 Remix 测试截图。
6. 通过 Monad Testnet 区块浏览器查询部署和签到交易。

同一个账户在同一天再次调用 `checkIn()` 时，交易应当回滚并提示：

```text
You have already checked in today
```

### Mock 说明

当前智能合约部分没有使用 mock 数据。

已完成的测试包括：

- Remix VM 测试账户；
- Monad Testnet 测试钱包；
- 实际智能合约部署；
- 实际测试网签到交易。

Remix VM 中的账户和余额属于本地测试环境，不是真实主网账户或真实资产。

React 前端、后端和数据看板目前尚未完成，因此没有使用 mock 页面或 mock API 代替已完成功能。

## Known Issues

1. 当前仅完成 Solidity 智能合约，尚未完成 React 前端。
2. 签到日期使用 `block.timestamp / 1 days` 计算，按照 UTC 日期判断。
3. 当前主要通过 Remix 手动测试，没有 Hardhat 自动化测试。
4. 连续签到逻辑尚未进行完整的跨日期测试。
5. 当前没有可直接访问的网页 Demo。
6. 当前没有排行榜和链上数据看板。
7. Monad Testnet 可能发生调整或重置，测试网记录不代表真实资产。

## 安全说明

本项目仅使用 Monad Testnet 和课程专用钱包。

不会在代码、文档或 AI 对话中公开：
- 钱包私钥
- 助记词
- API Secret
- 真实资产账户信息
