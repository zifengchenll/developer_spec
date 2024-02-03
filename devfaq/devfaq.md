1.vmware虚拟机与windows上面共享文件：

```
一定要用samba，并将Ubuntu上面的共享文件，通过盘符的方式映射；其他挂载方式都会存在各种问题，包括文件权限问题（vmware自带共享）、路径识别问题（sshfs）
```

2.Typora 编辑器造成的markdown文本格式问题修复：

```
使用typora来编写markdown开发文档，可以大大降低markdown语法的门槛，但是会有一个缺陷，就是推送到GitHub后，部分文本的排版混乱，与typora软件打开的效果不一样，这个问题，可以使用vscode插件来重新排版：

插件名称：markdownlint
快捷操作：ctrl+shift+i

```

