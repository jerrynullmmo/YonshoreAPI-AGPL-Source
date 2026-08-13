# YonshoreAPI 对应源码（v1.0.0-rc.21+yonshore.email-registration-v1）

此目录公开提供 YonshoreAPI 邮箱注册运行版本的完整对应源码。源码基于
[QuantumNous/New API](https://github.com/QuantumNous/new-api)
`v1.0.0-rc.21`，固定上游提交为
`bde9b2f44887d34ec54799ae191d50f97914359e`，只应用 Yonshore 邮箱注册补丁。

该补丁让用户名、邮箱和密码成为注册必填项；关闭邮箱验证码时，邮箱仍会经过格式
校验、规范化、重复检查并保存。它不启用支付、赠送额度、邮件或模型渠道。

由于 GitHub 单文件建议大小限制，`tar.gz` 被原样拆成 8 个二进制分片。分片不是
另一份源码，也没有改变压缩包内容。重组后的文件必须得到 SHA-256：

`67f266b400d5d559eefae70f47c4d075f59944330d9e077485425abb6991f812`

## 下载与重组

1. 下载本目录、`parts/` 中全部 8 个分片以及 `reassemble.sh`。
2. 在本目录执行：`bash reassemble.sh`。
3. 脚本会生成 `new-api-v1.0.0-rc.21-yonshore.email-registration-v1-corresponding-source.tar.gz` 并校验总大小和 SHA-256。
4. 版本、补丁、逐片摘要及运行镜像映射见 `SOURCE-MAP.json`。

源码包保留上游 `LICENSE`、`NOTICE`、第三方许可、完整修改后源码、原始补丁、修改
说明和构建说明。它不包含生产密钥、数据库、客户数据、日志或编译镜像。
