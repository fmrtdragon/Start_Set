# Set_Alias — 自定义命令别名和函数
# 执行 source ~/Start_Set/Set_Alias.sh 加载

fsort() {
  find "$@" -not -name '.*' | sort
}

lssort() {
  ls -1 "$@" | sort
}
