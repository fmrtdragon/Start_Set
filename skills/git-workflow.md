# Git 操作技能

代码提交、推送、远程仓库管理的操作规范。

**触发条件**：用户要求执行 commit、push、pull、merge、rebase、remote 等 Git 操作，或涉及向 GitHub 推送代码时激活。

## 1. 连接方式

- 统一使用 SSH 连接 GitHub：`git@github.com:fmrtdragon/<仓库名>.git`
- 仓库名默认使用文件夹名称

## 2. 操作记录

- 每次执行 git 命令（commit、push、pull、merge、rebase 等）后，追加记录到 `$git_demand_record/YYYY/MM/DD/git_log.md`
- 记录内容：时间戳 + 仓库路径 + 完整命令 + 操作结果摘要
- 同一天追加到同一文件

## 3. 推送前检查

### 3.1 隐私检查

- 每次 push 前扫描待推送内容，检查个人信息：用户名、邮箱、绝对路径 `/home/<user>/` 等
- 若发现个人信息，必须先向用户确认，不得直接推送
- GitHub 仓库名（如 `fmrtdragon`）不计入个人信息

### 3.2 状态确认

- 推送前确认只提交了本次会话修改的文件
- 仅对已明确确认的变更 add + commit + push

## 4. 错误处理

- Git 操作遇到错误时（远端仓库不存在、push 被拒绝、认证失败等），不得自行决定补救措施
- 禁止行为：自行创建远端仓库、强制推送、修改 remote、重置分支
- 正确做法：向用户报告错误 → 等待确认 → 按确认结果执行

## 5. 即时推送

以下目录修改后，commit 即自动 push，无需等待推送指令：

- `$Start_Set/`
- `$AI_script/`

即时推送仍需执行隐私检查。
