# YonshoreAPI 对应源码（v1.0.0-rc.21+yonshore.oauth-g4）

此目录公开提供 YonshoreAPI 当前候选版本的完整对应源码。源码基于 [QuantumNous/New API](https://github.com/QuantumNous/new-api) `v1.0.0-rc.21`，固定上游提交为 `bde9b2f44887d34ec54799ae191d50f97914359e`，并按顺序应用 Yonshore 的注册补丁与 OAuth 订阅渠道补丁。

由于连接器的单文件传输上限，`tar.gz` 被原样拆成 10 个二进制分片。分片不是另一份源码，也未改变压缩包内容；重组后的文件必须得到下列 SHA-256：

`8016ad465f8ddfdc98a8c7d78ae88219cabff7a17004957675eadafcbfb9fe03`

## 下载与重组

1. 下载本目录、`parts/` 中全部 10 个分片以及 `reassemble.sh`。
2. 在本目录执行：`bash reassemble.sh`
3. 脚本会生成 `new-api-v1.0.0-rc.21-yonshore-corresponding-source.tar.gz` 并校验总大小和 SHA-256。
4. 详细版本、补丁、分片顺序和逐片摘要见 `SOURCE-MAP.json`。

源码包保留上游 `LICENSE`、`NOTICE`、第三方许可、修改记录、固定补丁、构建说明和部署配置模板。它不包含生产密钥、数据库数据、私有日志或编译产物。

本页面只证明对应源码可公开取得；它不表示 YonshoreAPI 已经生产部署、已开放注册或已取得 aiapi.market 的转售资格。
