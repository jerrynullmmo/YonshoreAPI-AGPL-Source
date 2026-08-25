# YonshoreAPI 对应源码（v1.0.0-rc.21+yonshore.core-recharge-v1）

此目录提供 YonshoreAPI 当前邮箱注册版本加 YonshoreCore 充值启动入口的完整对应源码。
源码基于 [QuantumNous/New API](https://github.com/QuantumNous/new-api)
`v1.0.0-rc.21`，固定上游提交为
`bde9b2f44887d34ec54799ae191d50f97914359e`。

该版本只让已登录用户通过鉴权 POST 启动一次性 Core 充值会话。YonshoreCore 继续独占
钱包、订单、异步回调和双录账本；New API 原生支付保持关闭。源码包不含任何商户
凭据、Core 集成秘密、数据库、客户数据、日志或镜像。

GitHub 中保存的是原始 `tar.gz` 的定长分片。下载本目录和 `parts/` 全部文件后执行
`bash reassemble.sh`，脚本会重组源码包并核对总大小与 SHA-256。精确摘要、分片顺序
和运行镜像映射见 `SOURCE-MAP.json`。
