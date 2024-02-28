#!/bin/bash

# 源仓库URL
SOURCE_REPO="https://github.com/source_user/source_repo.git"
# 目标仓库URL，注意使用带有访问令牌的URL以进行认证
TARGET_REPO="https://<token>:x-oauth-basic@github.com/target_user/target_repo.git"

# 克隆的本地临时目录
CLONE_DIR=$(mktemp -d)

# 检查并克隆源仓库
git clone --mirror $SOURCE_REPO $CLONE_DIR

# 进入仓库目录
cd $CLONE_DIR

# 检查源仓库的所有更新并拉取
git fetch -p origin

# 推送更新到目标仓库，包括所有分支和标签
git push --mirror $TARGET_REPO

# 清理临时目录
cd ..
rm -rf $CLONE_DIR

echo "同步完成"

