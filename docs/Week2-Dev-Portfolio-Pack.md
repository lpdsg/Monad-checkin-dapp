# Week 2 Dev Portfolio Pack

## 1. Portfolio Overview

本周我选择的方向是 Dev Builder，并完成了一个基于 Solidity 和 Monad Testnet 的链上签到合约原型。

项目名称：

**Monad Check-in DApp**

项目仓库：

https://github.com/lpdsg/Monad-checkin-dapp

当前阶段主要完成智能合约设计、Remix 测试、多账户数据隔离测试以及 Monad Testnet 部署。

后续将继续加入 React 前端、MetaMask 钱包连接和链上数据展示功能。

---

## 2. Project Background

这个项目希望实现一个简单的链上每日签到功能。

用户连接钱包后，可以通过钱包地址完成每日签到，合约负责记录：

- 累计签到次数
- 当前连续签到天数
- 上一次签到日期
- 用户今天是否已经签到

与普通数据库签到不同，链上签到记录由智能合约执行，交易结果可以通过区块浏览器查询。

---

## 3. Dev Plan

### 用户核心操作

用户在 DApp 中完成以下操作：

1. 连接 MetaMask 钱包
2. 查看今天是否已经签到
3. 点击签到按钮
4. 钱包确认交易
5. 查看累计签到次数和连续签到天数

### Week 2 实现范围

本周真实完成：

- 编写 Solidity 签到合约
- 使用 Remix 编译合约
- 在 Remix VM 部署合约
- 测试首次签到
- 测试同一天重复签到
- 测试不同钱包地址的数据隔离
- 部署到 Monad Testnet
- 记录合约地址和交易 Hash
- 整理 AI 辅助开发记录

### 后续实现范围

后续计划完成：

- 创建 React 前端
- 连接 MetaMask
- 前端读取合约状态
- 前端发送签到交易
- 展示累计签到和连续签到数据
- 增加排行榜或用户数据看板

---

## 4. Technical Stack

| 模块 | 技术 |
|---|---|
| 智能合约 | Solidity |
| 合约开发环境 | Remix IDE |
| 区块链网络 | Monad Testnet |
| 钱包 | MetaMask |
| 前端计划 | React |
| 合约交互计划 | ethers.js |
| 后端计划 | Spring Boot |
| 数据库计划 | MySQL |
| 版本管理 | GitHub |

当前阶段的重点是：

```text
Solidity + Remix + MetaMask + Monad Testnet
```

## 5. Smart Contract Design

合约文件：

contracts/CheckIn.sol

合约使用结构体保存单个钱包地址的签到信息：

struct CheckInInfo {
    uint256 totalCheckIns;
    uint256 currentStreak;
    uint256 lastCheckInDay;
}

使用 mapping 将钱包地址与签到信息关联：

mapping(address => CheckInInfo) private checkInRecords;

因此，每个钱包地址都有独立的签到记录。

核心函数
getCurrentDay()

根据区块时间计算当前链上日期：

block.timestamp / 1 days
hasCheckedInToday(address user)

判断指定地址今天是否已经签到。

checkIn()

完成签到操作，并更新：

累计签到次数
连续签到天数
最后签到日期

如果用户当天已经签到，交易会被回滚：

You have already checked in today
事件

签到成功后触发：

event CheckedIn(
    address indexed user,
    uint256 checkInDay,
    uint256 totalCheckIns,
    uint256 currentStreak
);

事件可以帮助前端或数据分析程序读取用户签到行为。

## 6. Testing Evidence
测试一：合约编译

结果：

Solidity 合约编译成功
未出现阻止部署的编译错误
测试二：首次签到

操作：

在 Remix VM 部署合约
使用账户 A 调用 checkIn()
查询 hasCheckedInToday(accountA)

结果：

true

说明账户 A 当天签到成功。

测试三：重复签到

操作：

账户 A 在同一天再次调用 checkIn()。

结果：
```text
The transaction has been reverted to the initial state.
Reason provided by the contract:
"You have already checked in today"
```
说明合约能够阻止同一地址一天重复签到。

测试四：多账户数据隔离

操作：

账户 A 完成签到
切换到账户 B
账户 B 调用 checkIn()
分别查询两个账户状态

结果：

账户 A 可以保存自己的签到数据
账户 B 可以独立完成签到
两个地址的数据不会互相覆盖

说明 mapping 能够按照钱包地址分别保存用户数据。

测试五：Monad Testnet 部署

合约已部署到 Monad Testnet，并完成链上签到交互。

可提交的证明包括：

合约地址
部署交易 Hash
签到交易 Hash
Monad 区块浏览器交易页面
交易状态为 Success 的截图

注意：钱包私钥和助记词不会写入项目仓库。

## 7. Proof of Work

本项目当前可以提供以下 Proof of Work：

GitHub 项目仓库
Solidity 智能合约源码
Git Commit 记录
Remix 编译和部署截图
首次签到成功记录
重复签到失败记录
多账户测试记录
Monad Testnet 合约地址
Monad Testnet 部署交易 Hash
Monad Testnet 签到交易 Hash
AI-assisted Dev Plan
AI Collaboration Log
项目 Roadmap

这些证据不仅展示最终结果，也展示了项目从需求拆解、合约开发、测试到链上部署的完整过程。

## 8. AI Collaboration Log Summary

本项目中，AI 主要用于：

将项目想法拆分为最小功能
解释 Solidity 语法
辅助设计签到数据结构
检查签到逻辑
提供 Remix 测试步骤
分析交易失败原因
整理 README 和学习记录

我没有直接复制 AI 输出后就认为项目完成，而是进行了人工检查：

在 Remix 中重新编译
手动部署合约
使用不同账户调用函数
验证重复签到是否失败
查询不同账户的数据
在 Monad 区块浏览器确认交易状态

通过这一过程，我认识到 AI 可以提高开发效率，但代码是否正确仍然需要通过编译、测试和链上结果进行验证。

完整记录：

docs/AI-Collaboration-Log.md

## 9. Human Judgment

在 AI 辅助开发过程中，我重点进行了以下人工判断：

日期计算方式

合约使用：

block.timestamp / 1 days

将区块时间转换为天数。

这个方法适合当前学习原型，但它采用 UTC 时间，而不是用户本地时区。

数据隔离

合约使用：
```
mapping(address => CheckInInfo)
```
按照钱包地址保存数据。

我通过切换 Remix 测试账户验证了不同地址的数据不会互相覆盖。

重复签到限制

合约通过比较 lastCheckInDay 与当前日期，阻止同一天重复签到。

我通过第二次调用 checkIn() 并观察交易回滚，确认该限制有效。

安全边界

本项目只使用：

课程专用钱包
Monad Testnet
测试代币

没有使用真实资产，也没有在 GitHub 或 AI 对话中公开私钥和助记词。

## 10. Known Issues

当前项目仍存在以下限制：

目前公开仓库主要完成智能合约部分，React 前端仍待实现。
日期按照 UTC 计算，与部分用户所在时区可能不同。
当前连续签到逻辑还没有通过时间推进完整测试。
合约暂时没有提供直接返回全部签到信息的查询函数。
当前没有自动化测试，主要使用 Remix 手动测试。
当前没有排行榜和链上数据看板。
当前项目尚未部署正式可访问的网页 Demo。
测试网可能发生重置，测试币和交易记录不代表真实资产。

## 11. Week 3 Contribution Direction

Week 3 我计划在团队中承担 Dev Builder 角色，负责链上交互和基础数据处理。

可以贡献的内容包括：

Solidity 合约设计与修改
Monad Testnet 部署
MetaMask 钱包连接
React 前端与合约交互
交易状态和错误处理
链上事件读取
用户行为数据字段设计
Demo 联调和测试
GitHub 文档整理

团队项目计划升级为：

Web3 用户增长与留存运营平台

其中，我负责开发轻量链上交易或高频交互场景，为后续的用户分层、留存分析和运营策略提供真实的链上行为数据。

## 12. Reflection

本周最大的收获不是只完成了一份 Solidity 代码，而是第一次走完了较完整的链上开发流程：

需求拆解
→ 合约设计
→ 编译
→ 部署
→ 函数调用
→ 异常测试
→ 多账户测试
→ 测试网部署
→ 浏览器验证
→ 文档整理

我也理解了链上应用和普通 Web 应用的区别。

普通 Web 应用通常由服务器和数据库保存状态，而链上应用的核心状态可以由智能合约管理。用户的写入操作需要钱包签名并产生交易，交易成功后可以在区块浏览器中验证。

目前项目仍然是一个最小原型。下一步需要把智能合约能力连接到前端，让普通用户不需要直接操作 Remix，也可以完成钱包连接、签到和状态查询。
