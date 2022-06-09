#!/bin/bash

case $task in
    yarn)
        # yarn 快捷命令，默认 install
        shift
        cd web
        yarn $@
    ;;
    web)
        # 开发web页面
        cd web
        yarn serve
    ;;
    sync)
        # 编译同步web资源
        cd web
        yarn sync
    ;;
    *)
        echo "
USAGE: ./build.sh build|run|win|linux|mac|serve|cli|yarn|web|sync

build   调试打包
run     桌面端编译运行，需要先执行 sync 命令编译同步web资源
serve   服务端编译运行
cli     服务端打包命令
yarn    web页面 yarn 快捷命令，默认 install
web     开发web页面
sync    编译同步web资源
"
    ;;
esac
