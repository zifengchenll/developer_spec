### 工具安装

```
$ sudo apt install npm
$ sudo npm install -g commitizen	//全局安装
```

```
$ npm init							//在项目目录下执行（Enter）
$ commitizen init cz-conventional-changelog --save-dev --save-exact	//在项目目录下执行
```

```
$ git add -A	//添加需要提交的文件
$ git cz		//这个指令代替传统的(git commit)，如果中途退出，（ctrl+z）按两次
```

```
$ sudo npm install -g n && sudo n stable	//如果报错，则尝试更新npm、node软件版本
```



### 字段说明

| 字段     | 说明                                                         |
| -------- | ------------------------------------------------------------ |
| feat     | 新功能、新特性增加                                           |
| fix      | 对代码BUG进行修复                                            |
| docs     | 仅仅更新了文档                                               |
| style    | 修改代码风格、代码格式（指不影响代码运行的修改）             |
| refactor | 重构代码（既不是新增功能，也不是修改BUG，可以理解为代码太烂，对某些代码段重写） |
| perf     | 优化性能、优化体验                                           |
| test     | 添加缺失的测试或更正现有测试                                 |
| build    | 影响构建系统或外部依赖的更改                                 |
| ci       | 更改CI配置文件和脚本                                         |
| chore    | 构建过程或者辅助工具的变动                                   |
| revert   | 回滚版本                                                     |