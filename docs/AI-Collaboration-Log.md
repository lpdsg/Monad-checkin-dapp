# AI Collaboration Log

## 协作记录 01｜选择 Dev 路线并拆解 Week 2 项目

### 1. 协作目标

本次 AI 协作的目标是：

- 比较 Research、Ops、Dev 三条路线
- 结合个人背景判断适合的主方向
- 明确 Week 2 的最小项目范围
- 整理需要学习的开发资料
- 规划接下来的执行步骤

### 2. 我向 AI 提供的信息

我向 AI 提供了以下背景：

- 学术背景
- 学习过 Java、Spring Boot 和 MySQL
- 具备数据分析基础
- 已经在 Monad Testnet 完成钱包配置和链上交易
- 已经使用 Remix 编写并部署 Solidity 合约
- 希望项目同时有助于 Web3 和 Web2 求职

### 3. AI 帮助完成的内容

AI 主要帮助了：

- 对比 Research、Ops、Dev 三类角色
- 分析我的技能与 Dev 路线的匹配程度
- 将职业定位细化为 Web3 应用开发和链上数据方向
- 梳理 Monad、Solidity、Remix、Hardhat、Foundry 和 GitHub 的作用
- 把长期技术路线拆分为多个阶段
- 将 Week 2 范围缩小为 React、MetaMask、Solidity 和 Monad
- 提供 GitHub 文档结构建议
- 辅助整理 Role Choice Card 和学习日志结构

### 4. 人类进行了哪些修改和核查

我没有直接接受 AI 的全部建议，而是进行了以下判断：

- 确认自己确实已经部署过 Solidity 合约
- 确认 Java 后端和数据分析仍然是长期发展方向
- 判断 Week 2 无法同时完成完整前端、后端、数据库和数据看板
- 将 Spring Boot、MySQL 和链上数据看板调整到后续阶段
- 暂不深入学习 Foundry 和复杂 DeFi 合约
- 确认本周先完成可以运行的最小 DApp
- 最终由我本人决定选择 Dev Builder

### 5. 我核查了什么

我重点核查了：

- 当前 GitHub 仓库是否已成功创建
- 已有合约和链上交易是否真实存在
- Week 2 目标是否符合自己的当前技术水平
- AI 建议的技术路线是否过大
- 文档中是否包含隐私或钱包安全风险
- 是否错误地把测试网资产当成真实资产

### 6. 哪些内容不能交给 AI

以下内容不能完全交给 AI：

- 职业方向的最终决定
- 钱包交易的最终确认
- 合约部署前的安全审核
- 代码是否能够正常运行的实际验证
- 合约地址和网络参数的确认
- ABI 与已部署合约是否匹配
- 错误信息是否已经真正解决
- 官方文档内容的最终核查
- 项目是否达到课程要求的判断

绝对不能向 AI 提供：

- 钱包私钥
- 助记词
- 真实资产账户密码
- API Secret
- 其他敏感身份信息

### 7. 本次协作结论

本次协作后，我确定：

- Week 2 主方向为 Dev Builder


## 协作记录 02｜从 Solidity 文档到 CheckIn 合约

### 1. 协作目标

本次协作的目标是阅读 Solidity 中与签到合约相关的基础内容，并使用 AI 辅助完成 CheckIn 合约的代码骨架和业务逻辑。

重点学习内容包括：

- struct
- mapping
- event
- require
- block.timestamp
- view 函数
- msg.sender

### 2. 我向 AI 提供的需求

我希望实现一个最小的链上每日签到合约：

- 用户每天只能签到一次
- 记录累计签到次数
- 记录连续签到天数
- 记录最后签到日期
- 不同钱包地址的数据互不影响
- 签到成功后触发链上事件
- 可以查询某个地址今天是否已经签到

### 3. AI 提供的帮助

AI 帮助我：

- 将签到需求拆分为数据结构、读取函数和写入函数
- 建议使用 struct 保存单个用户的签到信息
- 建议使用 mapping 按钱包地址保存数据
- 生成 CheckIn 合约的初始代码骨架
- 解释 block.timestamp / 1 days 的作用
- 解释 require 失败和交易回滚的原因
- 提供 Remix VM 的测试步骤
- 帮助分析多账户测试结果

### 4. 我的人工修改和判断

我没有直接把 AI 输出视为最终结果，而是进行了以下修改和确认：

- 确认使用 address 作为 mapping 的 key
- 确认累计签到次数、连续签到天数和最后签到日期需要分别保存
- 保留 hasCheckedInToday(address) 函数，方便测试和未来前端调用
- 使用 msg.sender 识别实际发起签到的钱包
- 检查同一账户当天重复签到时是否正确回滚
- 切换不同 Remix VM 账户验证数据是否隔离
- 检查签到事件是否正确输出
- 检查代码中是否包含钱包私钥或助记词

### 5. 人工测试结果

我在 Remix VM 中完成了以下测试：

1. CheckIn.sol 编译成功
2. 合约部署成功
3. 第一个账户首次签到成功
4. 查询 hasCheckedInToday 返回 true
5. 同一账户重复签到时交易回滚
6. 回滚原因为 You have already checked in today
7. 切换新账户后签到成功
8. 不同账户可以分别保存签到记录
9. CheckedIn 事件能够正常触发

### 6. 本次协作结论

AI 可以帮助阅读文档、拆分需求、生成代码骨架和解释错误，但最终仍然需要由人类完成：

- 实际编译
- 合约部署
- 钱包交易确认
- 多账户测试
- 错误判断
- 业务逻辑核查
- 安全信息检查

本次产出为：

- contracts/CheckIn.sol
- docs/Day3-Document-to-Code.md
- docs/AI-Collaboration-Log.md
- Remix 编译、部署和交互测试记录
- 项目定位为 Monad Check-in DApp
- 本周优先技术范围为 React、MetaMask、Solidity 和 Monad
- Spring Boot、MySQL 和数据看板放到后续阶段
- AI 用于辅助分析、生成、解释和 Debug
- 人类负责判断、核查、运行、测试和安全确认
