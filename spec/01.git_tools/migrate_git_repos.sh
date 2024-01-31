#!/bin/bash

# 设置新的远程仓库地址
NEW_REMOTE_URL="https://new.repository.url/repo.git"

# 更改远程仓库地址
git remote set-url origin $NEW_REMOTE_URL

# 成功和失败的分支列表
success_branches=()
fail_branches=()

# 获取所有远程分支并检出为本地分支
for branch in `git branch -r | grep -v '\->'`; do
    if [ "${branch}" != "origin/HEAD" ]; then
        # 获取分支名称
        branch_name=$(echo "${branch}" | sed 's/origin\///')
        # 检出分支
        git checkout -b $branch_name $branch
        # 推送到新的远程仓库
        if git push origin $branch_name; then
            success_branches+=($branch_name)
        else
            fail_branches+=($branch_name)
        fi
    fi
done

# 推送所有标签
git push --tags origin

# 打印结果
echo "上传成功的分支："
printf '%s\n' "${success_branches[@]}"
echo "上传失败的分支："
printf '%s\n' "${fail_branches[@]}"

