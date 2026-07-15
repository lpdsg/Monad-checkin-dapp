# W2 Day 3｜文档到代码骨架：Monad Check-in Contract

## 1. 今日任务

本次任务的目标是阅读与 Solidity 智能合约开发相关的文档，在 AI 辅助下将产品需求拆分为代码结构，并通过人工运行和测试完成验证。

本次产出：

- Solidity 文档阅读记录
- CheckIn 合约代码骨架
- 可运行的 CheckIn.sol
- Remix 测试记录
- AI Collaboration Log
- 人工修改和核查说明

## 2. 项目需求

我要实现一个部署在 Monad Testnet 上的每日签到合约。

用户通过钱包调用合约后，可以：

- 每天签到一次
- 查询今天是否已经签到
- 查询累计签到次数
- 查询连续签到天数

合约还需要满足：

- 不同钱包地址的数据互不影响
- 同一个地址当天不能重复签到
- 签到成功后触发链上事件
- 不保存用户私钥、助记词等敏感信息

## 3. 阅读的文档内容

本次主要阅读和理解了 Solidity 中以下内容：

### struct

用于把同一个用户的多个签到字段组织在一起。

本项目使用：

```solidity
struct CheckInInfo {
    uint256 totalCheckIns;
    uint256 currentStreak;
    uint256 lastCheckInDay;
}
```

### mapping
用于根据钱包地址保存每个用户独立的数据。
```
mapping(address => CheckInInfo) private checkInRecords;
```
其中：
- key 是用户钱包地址
- value 是该地址对应的签到信息

### msg.sender
用于获取当前调用合约的钱包地址。
用户执行 checkIn 时，合约通过 msg.sender 判断是哪一个账户正在签到。

### block.timestamp
用于获取当前区块的时间戳。
本项目使用：
```
block.timestamp / 1 days
```
将秒级时间戳转换为按天计算的整数，用于判断用户当天是否已经签到。

### require

用于检查交易执行前必须满足的条件。

本项目通过 require 阻止用户一天内重复签到。

### event

签到成功后触发 CheckedIn 事件，记录：
- 用户钱包地址
- 签到日期
- 累计签到次数
- 连续签到天数
事件可以供区块浏览器和未来前端读取。

## 4. AI 生成的代码骨架

AI 根据签到需求，将代码拆分为以下部分：
```
contract CheckIn {

    struct CheckInInfo {
        uint256 totalCheckIns;
        uint256 currentStreak;
        uint256 lastCheckInDay;
    }

    mapping(address => CheckInInfo) private checkInRecords;

    event CheckedIn(...);

    function getCurrentDay() public view returns (uint256) {
        // 获取当前日期
    }

    function hasCheckedInToday(address user)
        public
        view
        returns (bool)
    {
        // 判断是否已经签到
    }

    function checkIn() public {
        // 检查重复签到
        // 更新累计签到次数
        // 更新连续签到天数
        // 更新最后签到日期
        // 触发签到事件
    }
}
```
代码骨架首先确定了数据结构、函数职责和业务流程，但还需要继续实现和测试。

## 5. 人工修改与实现

在 AI 提供代码结构后，我进行了以下人工判断和修改：
```text
使用 address 作为 mapping 的 key，确保不同钱包的数据相互隔离。
使用 msg.sender 作为实际签到用户，不允许调用者替其他地址签到。
增加 hasCheckedInToday(address) 查询函数，方便 Remix 测试和未来前端调用。
使用 lastCheckInDay 判断是否连续签到。
增加 require，阻止同一地址当天重复签到。
增加 CheckedIn 事件，方便链上查询。
检查代码中没有私钥、助记词或真实账户信息。
```

最终代码位于：
```
contracts/CheckIn.sol
```

## 6. 人工测试过程

我在 Remix VM 中完成了以下测试：

- 测试一：合约编译

结果：编译成功。

- 测试二：合约部署

结果：部署成功，可以在 Deployed Contracts 中查看函数。

- 测试三：首次签到

使用账户 1 调用 checkIn。

结果：

交易成功
累计签到次数更新
连续签到天数更新
CheckedIn 事件正常触发

- 测试四：查询是否签到

调用：

hasCheckedInToday(账户1地址)

结果：
```
true
```
说明账户 1 今天已经签到。

- 测试五：当天重复签到

账户 1 再次调用 checkIn。

结果：交易回滚。

回滚原因：
```
You have already checked in today
```
这是合约预期行为，说明重复签到限制生效。

- 测试六：切换账户

切换到 Remix VM 的账户 2，然后调用 checkIn。

结果：账户 2 可以正常完成首次签到。

这说明 mapping 能够按照钱包地址分别保存签到数据。

- 测试七：查询未签到地址

选择一个尚未调用 checkIn 的账户地址，调用：
```
hasCheckedInToday(未签到地址)
```

预期结果：
```
false
```

## 7. AI 与人类的职责划分

### AI 负责辅助
阅读和解释文档
拆解业务需求
生成代码骨架
解释 Solidity 语法
提供测试步骤
分析错误信息
整理开发记录

### 人类负责
确认项目需求
判断 AI 建议是否合理
编译和部署合约
确认钱包交易
切换账户进行测试
核对查询结果
判断交易回滚是否符合预期
检查安全风险
决定最终是否接受代码

## 8. 今日结论

本次任务完成了从 Solidity 文档知识点到签到合约代码的转换。
我不只是让 AI 生成代码，而是完成了：

```text
文档知识点理解
需求拆解
代码结构设计
合约编译
合约部署
首次签到测试
重复签到测试
多账户数据隔离测试
查询函数测试
AI 协作过程记录
```

因此，本次产出可以作为 Dev 方向的 Code Skeleton、技术方案和 AI Collaboration Log。
