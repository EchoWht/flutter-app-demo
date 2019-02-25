# Flutter 学习记录

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