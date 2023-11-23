##### 提醒

```
仓库中的大文件，会在提交前进行分包处理，下载到本地后，应该运行一次合包命令，执行如下

$ cd code_spec/github_split/ && ./split_after.sh
```

##### 命令

```
来源：
vscode安装C/C++插件后，会自动安装clang-format命令
```

```
Linux路径：
/home/zifeng/.vscode/extensions/ms-vscode.cpptools-1.18.5-linux-x64/LLVM/bin
```

```
Windows路径：
C:\Users\zifeng\.vscode\extensions\ms-vscode.cpptools-1.18.5-win32-x64\LLVM\bin
```

##### 格式配置文件生成命令

```
clang-format -style=llvm -dump-config > .clang-format		//通过命令生成最原始的代码风格配置文件
```

##### 仓库目录结构说明如下：

```
.
├── docs
│   ├── Angular提交信息规范.mhtml
│   ├── ClangFormat指令说明.mhtml
│   └── Clang格式样式选项文档.mhtml
├── readme.md
└── spec
    ├── 01.git_tools
    │   └── readme.md
    ├── 02.ide_tools
    │   ├── shortcut_key
    │   │   ├── keyboard-shortcuts-linux.pdf
    │   │   └── keyboard-shortcuts-windows.pdf
    │   ├── vscode
    │   │   ├── linux
    │   │   │   └── code_1.84.2-1699528352_amd64.deb
    │   │   └── windows
    │   │       └── VSCodeUserSetup-x64-1.84.2.exe
    │   └── vscode_clang-format
    │       ├── bin
    │       │   ├── clang-format
    │       │   └── clang-format.exe
    │       └── config
    ├── 03.repo_tools
    │   └── readme.md
    ├── 04.commit_tools
    │   └── readme.md
    ├── 05.doxygen_tools
    │   ├── Doxyfile
    │   └── Doxyfile_Demo.h
    └── 06.code_spec_files
        ├── aithinker
        └── huawei
            └── 华为技术有限公司C语言编程规范.pdf



```

