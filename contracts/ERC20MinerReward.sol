// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract ERC20MinerReward is ERC20 {
    event LogNewAlert(string description, address indexed _from, uint256 _n);


    constructor() ERC20("MinerReward", "MRW") {

    }


    function _reward() public {
        _mint(block.coinbase, 20);
        emit LogNewAlert('_rewarded', block.coinbase, block.number);
    }
    //这段代码是一个以太坊智能合约的片段，使用了 Solidity 语言编写。它定义了一个名为 ERC20MinerReward 的合约，该合约继承自 ERC20 合约。以下是对代码的逐行解释：
    //
    //contract ERC20MinerReward is ERC20 {：定义一个名为 ERC20MinerReward 的合约，它继承自 ERC20 合约。ERC20 是一个标准合约，定义了以太坊上代币的基本操作，如转账、余额查询等。
    //
    //event LogNewAlert(string description, address indexed _from, uint256 _n);：定义了一个名为 LogNewAlert 的事件，该事件包含三个参数：一个字符串 description，一个被索引的地址 _from（通常用于快速查找事件日志），以及一个无符号整数 _n。索引参数允许在事件日志中快速查找特定地址的事件。
    //
    //constructor() ERC20("MinerReward", "MRW") {}：这是一个构造函数，用于初始化合约。它调用基类 ERC20 的构造函数，传递两个字符串参数："MinerReward"（代币名称）和 "MRW"（代币符号）。
    //
    //function _reward() public {：定义了一个名为 _reward 的公共函数。这个函数允许外部调用，用于发放奖励。
    //
    //_mint(block.coinbase, 20);：调用 _mint 函数来铸造（创建）20个代币，并将其发送到当前区块的矿工地址（block.coinbase）。_mint 是 ERC20 合约中的一个内部函数，用于增加代币的总供应量并发送代币到指定地址。
    //
    //emit LogNewAlert('_rewarded', block.coinbase, block.number);：触发 LogNewAlert 事件，传递一个字符串 "_rewarded"，当前区块的矿工地址（block.coinbase），以及当前区块的编号（block.number）。这允许外部监听者知道何时有新的奖励被发放。
    //
    //总结来说，这段代码定义了一个简单的 ERC20 代币合约，其中包含一个用于发放奖励的函数 _reward。每次调用这个函数时，都会向当前区块的矿工地址铸造20个代币，并触发一个事件来记录这次奖励发放。
}