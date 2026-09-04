# YonshoreAPI 对应源码（邮箱验证与 Turnstile 注册保护 v1）

本目录提供 YonshoreAPI 固定版本
`v1.0.0-rc.21-yonshore.registration-protection-v1` 的完整
AGPL-3.0-only 对应源码。它建立在已发布的 Core 同步用量桥版本上，
增加两项最小适配：Resend SMTP 密钥只从只读 secret 文件读取；
Turnstile 客户端令牌交给 Yonshore 的受管 Siteverify Worker 校验，并要求
返回的 hostname 精确等于 `api.yonshore.com`。

源码中的两个生产功能开关默认保持关闭。公开本源码不表示 Resend 域名、
真实验证码邮件、真实浏览器 Turnstile、模型渠道或完整运营已经放行。

GitHub 中保存的是原始 `tar.gz` 的定长分片。下载本目录与 `parts/` 全部文件后
执行 `bash reassemble.sh`，脚本会重组归档并核对大小和 SHA-256。
`SOURCE-MAP.json` 记录上游版本、补丁顺序、每个分片摘要和运行镜像映射。
