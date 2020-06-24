# anyswap-token
any swap ERC20 token

## install @openzeppelin/contracts

```shell
npm install
```

## flatten contract

This has been already done.

Mention here only for re-flatten if modified later.

```shell
mpm install -g truffle-flattener
truffle-flattener AnyswapToken.sol | sed '/SPDX-License-Identifier:/d' | sed 1i'// SPDX-License-Identifier: MIT' > contracts/AnyswapToken.sol
```

## compile

```shell
truffle compile
```

## deploy

```shell
truffle migrate
```

