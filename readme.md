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
│   └── ClangFormat 指令说明文档.mhtml				//clang-format指令说明文档
├── readme.md
├── vscode
│   ├── linux
│   │   └── code_1.84.2-1699528352_amd64.deb			//vscode安装包
│   └── windows
│       └── VSCodeUserSetup-x64-1.84.2.exe			//vscode安装包
└── vscode_clang-format
    ├── bin
    │   ├── clang-format						
    │   ├── clang-format.exe					
    │   ├── clang-tidy
    │   └── clang-tidy.exe
    └── config
        └── .clang-format					//vscode使用代码风格格式化配置文件，用户拷贝到项目


```

