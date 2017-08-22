# RGAppUtils
Objective-C 语言版本的 App 开发辅助工具集。

源码位于项目文件夹与`Info.plist`同级的`RGAppUtils`文件夹内。源码结构如下：

![Structure_of_RGAppUtils](https://github.com/rain2540/RGAppUtils/blob/master/RGAppUtils.png)

* `RGAppUtils.h` 为项目头文件, 使用时直接 import 该文件, 既可以使用项目内所有方法。
* `App Commons` 包含了应用开发中常用的单例对象、常用控件默认尺寸等内容。
* `Categories` 中包含了对 Cocoa 框架(主要为 Foundation)、UIKit 中部分类的拓展。
* `RGBuild` 包含一些其他工具。

