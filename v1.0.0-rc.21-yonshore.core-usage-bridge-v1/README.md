# YonshoreAPI 对应源码（Core 同步用量桥 v1）

本目录提供 YonshoreAPI 固定版本 `v1.0.0-rc.21-yonshore.core-usage-bridge-v1`
的完整 AGPL-3.0-only 对应源码。它在已发布的邮箱注册与 Core 充值入口版本上，
增加同步模型请求的 Core 金额授权、结算、余量释放和未知结果对账薄适配。

YonshoreCore 仍是人民币钱包和账本的唯一权威。异步模型任务没有持久化 Core
结算身份，本版本会在调用上游前明确拒绝，不能回退到 New API 本地钱包。
生产候选默认关闭充值和用量计费；源码发布不表示模型渠道、售价、生产扣费或
开放运营已经放行。

GitHub 中保存的是原始 `tar.gz` 的定长分片。下载本目录与 `parts/` 全部文件后
执行 `bash reassemble.sh`，脚本会重组归档并核对大小和 SHA-256。
`SOURCE-MAP.json` 记录上游版本、补丁顺序、每个分片摘要和运行镜像映射。
