# Flutter 学习记录

主要记录些重点，以及我认为看过一遍并不能记住的知识点，详细内容还需要参考文档

## 搭建开发环境（Mac）

### 安装Flutter

由于网络原因需要使用临时镜像（有可能会变）

```bash
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```

在flutter官网下载安装包，同网络原因可以去[github](https://github.com/flutter/flutter/releases)上下载

解压安装包（我解压在~/目录中），添加flutter相关工具到path

```bash
export PATH=/Users/wanghaotian/flutter/bin:$PATH
```

### 安装Xcode

要为iOS开发Flutter应用程序，您需要Xcode 9.0或更高版本:

1. 安装Xcode 9.0或更新版本(通过链接下载或苹果应用商店).
2. 配置Xcode命令行工具以使用新安装的Xcode版本 sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer 对于大多数情况，当您想要使用最新版本的Xcode时，这是正确的路径。如果您需要使用不同的版本，请指定相应路径。
3. 确保Xcode许可协议是通过打开一次Xcode或通过命令sudo xcodebuild -license同意过了.

使用Xcode，您可以在iOS设备或模拟器上运行Flutter应用程序。

### 安装Android

在IntelliJ官网上下载并安装

然后安装插件Flutter和Dart插件

## 路由

分两种方式

- Navigator.push //通过new MaterialPageRoute直接调用类
- Navigator.pushNamed //通过别名（缺点不能传参数）

## 包管理（依赖）

通过配置文件[pubspec.yaml](../pubspec.yaml)来管理第三方依赖

例如使用english_words依赖

```yaml
dependencies:
  # 省略了其他的代码···
  english_words: ^3.1.0   # 新增了这一行
```

添加完这一句代码后，Android Studio的右上角会有Packages get 选项来安装此第三方依赖，等同于以下命令：

```bash
flutter packages get
```

在代码中使用此包

```dart
import 'package:english_words/english_words.dart';

```

使用本地依赖或者git上的依赖

```yaml
dependencies:
  # 省略了其他的代码···
  # 本地
  pkg1: 
    path: ../../code/pkg1
  #git仓库
  pkg2:
    git:
      url: git://github.com/flutter/packages.git
      # git上相对的路径
      path: packages/package1
```

## 使用资源

```yaml

flutter:
  assets:
    - assets/images/gitcat.png

```

## Widget

定义：Widget是描述Element的一个 `配置数据` ，根据一个配置(Widget)可以创建多个实例(Element)。

### Stateless Widget 和 Stateful Widget

Stateful Widget与Stateless Widget 根据命名就可以看出区别，Stateful包含一个新的接口createState()用来创建状态。

### State状态

#### 状态管理

- 如果状态是用户数据，如复选框的选中状态、滑块的位置，则该状态最好由父widget管理。
- 如果状态是有关界面外观效果的，例如颜色、动画，那么状态最好由widget本身来管理。
- 如果某一个状态是不同widget共享的则最好由它们共同的父widget管理。

## 开源项目收藏

- [https://flutterbyexample.com/](https://flutterbyexample.com/)


