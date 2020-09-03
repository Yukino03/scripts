#!/bin/sh

# 初期化処理
cd `dirname $0`
is_target_rm_mode=true
file_list=$1
target_dir=$2

# 配列格納
list_array=($(perl -pe 's/\n/ /g' $file_list))
ls_array=($(ls $target_dir))

check_array () {
    local i
    for i in ${list_array[@]}; do
        if [[ ${i} = ${1} ]]; then
            echo "true"
            return 0
        fi
    done
    echo "false"
    return 1
}

if "${is_target_rm_mode}"; then
  for val in ${ls_array[@]}; do
    echo $(check_array $val)
    if $(check_array $val); then
      rm -rf $val
    else
      :
    fi
  done
else
  for val in ${ls_array[@]}; do
    if $(check_array $val); then
      :
    else
      rm -rf $val
    fi
  done
fi
