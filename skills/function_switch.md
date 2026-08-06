# 功能开关

> 以下开关控制脚本开发、测试、归档等行为。在 `StartAI.md` 及对应 Skill 中引用。
> 格式：`SWITCH_NAME=<默认值> # 说明`

## 中间任务脚本相关

```bash
TEST_INTERMEDIATE_SCRIPT=on    # 是否对中间任务产生的脚本进行功能测试
TEST_CONFIDENCE=90             # 测试可信度（功能覆盖率评判阈值，由 AI 综合功能点/参数空间/分支路径三维度评估）
ARCHIVE_INTERMEDIATE_SCRIPT=on # 是否将中间任务脚本归档到 $AI_script/
```

## 使用方式

在规则中按以下模式引用：

```
如果 $Fun_Open 中的 TEST_INTERMEDIATE_SCRIPT=on，则执行功能测试；
TEST_CONFIDENCE 定义最低可信度（默认 90%）；
如果 ARCHIVE_INTERMEDIATE_SCRIPT=on，则归档脚本。
```
