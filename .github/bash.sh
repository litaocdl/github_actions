#!/bin/bash
a=$(for c in $(seq $ut_min 0.01 $ut_max); do
  if [[ "$c" == "$ut_min" ]]; then
#    versions+=${c}
     echo ${c}".x"
  else
#    versions+=","${c}".x"
      echo ${c}".x"
  fi
done |  jq -cRs 'split("\n") | map(select(length>0))')
#k8s_version=$(echo $versions | jq -cRs 'split(",")')
#echo $k8s_version
echo $a
