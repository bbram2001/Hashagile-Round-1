#!/bin/bash
rotateRight() {
local arr=("$@")
local n=${#arr[@]}
local k=$(( arr[n-1] ))

unset arr[n-1]

n=$((n-1))

k=$(( k % n ))

local new_arr=()

for (( i=n-k; i<n; i++ )); do
new_arr+=("${arr[i]}")
done
for (( i=0; i<n-k; i++ )); do
new_arr+=("${arr[i]}")
done

echo "${new_arr[@]}"
}

array=(1 2 3 4 5)
k=2

array+=($k)

rotatedArray=$(rotateRight "${array[@]}")

echo "Original Array: ${array[@]:0:${#array[@]}-1}"
echo "Array after rotating by $k positions: $rotatedArray"
