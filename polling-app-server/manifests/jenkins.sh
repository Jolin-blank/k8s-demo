#/bin/bash  
JAVA_OPTS='das dsalkd dasjd daskldj daslkj dasljk dsalkjdd dasljd'
  java_opts_array=()
  while IFS= read -r -d '' item; do
    java_opts_array+=( "$item" )
  done < <([[ $JAVA_OPTS ]] && xargs printf '%s\0' <<<"$JAVA_OPTS")
echo ${java_opts_array[@]}
