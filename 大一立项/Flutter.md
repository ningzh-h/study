# Flutter

[toc]

> 基于[Dart语言](./Dart.md)，开源免费的UI框架
>
> 跨端框架中排名第一

> 官网：
>
> [Flutter](https://flutter.dev/)
>
> [Flutter Packages](https://pub.dev)

## 环境配置

> - [x] [安装配置JDK](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
>
> - [x] 安装Android Studio，下载Flutter插件
>
> - [x] 下载FlutterSDK
>
> - [x] 配置Flutter国内镜像
>
>   FLUTTER_STORAGE_BASE_URL: https://storage.flutter-io.cn
>
>   PUB_HOSTED_URL: https://pub.flutter-io.cn
>
> 详情参见CSDN

> 注意Flutter的包名（Organization）、项目名、根目录都只能是**小写字母**与**下划线**的组合，不能有其他符号

> 真机调试/模拟机调试
>
> 在应用对应的路径下的命令行工具输入`flutter run`即可对应用进行调试，`flutter run -d all`可以同时在多个平台上运行应用

> ```dart
> Flutter run key commands.
> r Hot reload.
> R Hot restart.
> h List all available interactive commands.
> d Detach (terminate "flutter run" but leave application running).
> c Clear the screen.
> q Quit (terminate the application on the device).
> ```
>
> | 常用命令快捷键 | 描述                     |
> | -------------- | ------------------------ |
> | r              | 热加载，算是重新加载项目 |
> | R              | 热重启                   |
> | p              | 显示网格，掌握布局情况   |
> | o              | 切换Android和iOS模式     |
> | q              | 退出调试预览模式         |

## 目录结构

> * .dart_tool、.idea
>
>   编译器配置文件
>
> * android、ios
>
>   Android和iOS平台的资源文件
>
> * windows、macos、linux
>
>   PC端的资源文件
>
> * test
>
>   存放测试代码
>
> * build
>
>   编译文件，如果删去，再次运行时又会重新生成
>
> * lib
>
>   项目录，所有代码都在其中
>
> * 配置文件
>
>   * pucspec.yaml
>
>     项目的依赖、版本号、配置信息，非常重要
>
>   * analysis_options.yaml
>
>     分析dart语法的文件，老在过目升级成新项目有警告信息的话可以删掉或全部注释掉
>
>     初学建议保留



## 入口

### 入口文件

> main.dart

### 入口方法

> main.dart中的main函数
>
> ```dart
> void main(){
>     runApp(const MyApp());
> }
> ```

## 组件

> 按住ctrl单击组件可以查看源码

### 常见组件

> * `Center`组件
>
>   让内容居中，有成员参数`child`
>
> * `MaterialApp`和`Scaffold`组件
>
>   用于装饰app
>
>   需要导入库`package:flutter/material.dart`
>
>   输入代码块`importM`即可生成相应代码（插件）
>
>   * `MaterialApp`组件
>
>    是一个方便的`Widget`，封装了应用程序实现Material Design所需要的一些`Widget`，一般作为顶层`Widget`来使用
>
>    常用属性：
>
>    * `home`（主页）
>     * `titile`（标题）
>    * `color`（颜色）
>     * `theme`（主题）
>     * `routes`（路由）
>     * 设置`debugShowCheckedModeBanner: false`以去掉页面右上角的Debug图案
>    * ...
>
>  * `Scaffold`组件
>
>    是Material Design布局结构地实现，提供了用于显示drawer、snackbar和底部sheet的API
>
>    主要属性：
>
>    * `appBar` - 显示在界面顶部的一个`AppBar`
>     * `body` - 当前界面所显示的主要内容`Widget`
>    * `drawer` - 抽屉菜单控件
>    * `floatActionButton`：在右下角创建一个浮动的按钮
>    * `bottomNavigationBar`：自定义底部导航条
>     * ...
>
>   ```dart
> import 'package:flutter/material.dart';
> 
> void main() {
> 	runApp(
>     MaterialApp(
> 			home: Scaffold(
>     		appBar: AppBar(title: const Text('Hello World!')),
> 				body: const Center(
>       		child: Text('Hello World!',
>         		textDirection: TextDirection.ltr,
>         		style: TextStyle(
>           		color: Colors.red, 
>             	fontSize: 100.0
>           	)
>         	),
> 				),
>     	),
>   	)
> 	);
> }
>   ```
>
>   * `Column`组件与`Row`组件
>
>       纵向展示参数列表`children`中的成员
>
>     `children`中可以添加`SizeBox()`中添加`hieght`或`width`属性来达到`magin`的外距离效果
>

#### 把内容单独抽离成一个组件

> 自定义组件其实就是一个类
>
> 需要继承`StatelessWidget`或`StatefulWidget`
>
> `StatelessWidget`是无状态组件，是状态不可变的widget
>
> `StatefulWidget`是有状态组件，持有的状态可能在widget生命周期中改变
>
> 前期我们都继承`StatelessWidget`
>
> ```dart
> import 'package:flutter/material.dart';
> 
> void main() {
> 	runApp(
>     MaterialApp(
>  			home: Scaffold(
>    			appBar: AppBar(title: const Text('Hello World!')),
>   	 		body: const MyApp();
>  			),
> 		)
>   );
> }
> 
> class MyApp extends StatelessWidget{
>   const MyApp({Key? key}) : super(key: key);
> 
> 	@override
> 	Widget build(BuildContext context){
>   	return const Center(
>     	child: Text('Hello World!',
>       	textDirection: TextDirection.ltr,
>         style: TextStyle(
>         	color: Colors.red, 
>           fontSize: 100.0
>         )
>       ),
>    	),
> 	}
> }
> ```
>
> 也可以直接输入`StatelessW`代码块即可直接生成相应的代码结构（插件）
>
> 故：`Flutter`代码的基本结构如上

#### `Container`容器组件

> 类似`html`中的`<div>`标签，主要用于布局

> `Container`组件的常用属性如下：
>
> * `alignment`  
>
>   * `topCenter`：顶部居中对齐
>   * `topLeft`：顶部左对齐
>   * `topRight`：顶部右对齐
>   * `center`：水平垂直居中对齐
>   * `centerLeft`：垂直居中，水平左对齐
>   * `centerRight`：垂直居中，水平右对齐
>   * `bottomCenter`：底部居中对齐
>   * `bottomLeft`：底部左对齐
>   * `bottomRight`：底部右对齐
>
> * `decoration`
>
>   * `BoxDecoration`：`Map`类型的方法
>     * `color`：设置背景颜色
>     * `border`：设置边框性质
>       * `color`：设置边框颜色
>       * `width`：设置边框宽度
>       * `borderRadius`：设置圆角
>     * `boxShadow`：`List`类型，设置背景阴影
>       * `color`：阴影颜色，
>       * `blurRadius`：阴影强度
>       * `offset`：偏移量
>     * `gradient`：设置颜色渐变
>       * `LinearGradient`：线性渐变
>       * `RacialGradient`：径向渐变
>
> * `margin`：表示`Container`与其他组件之间的距离
>
>   如`magin: EdgeInsets.all(20.0)`
>
> * `padding`：`Container`的内边距，表示边缘与`child`之间的距离
>
>   如`padding: EdgrInsets.all(10.0)`
>
> * `transform`：让`Container`容易进行一些变化如：
>
>   * 位移 - `translationValues(x, y, z)`，其中`x,y,z`轴正方向分别为向右、向下、向里
>   * 缩放 - `skewY(0.2)`沿`y`轴倾斜
>   * 旋转 - `rotationZ(0.2)`绕Z轴旋转
>
> * `height`与`width`：容器高度、宽度，`double`类型
>
>   > [!tip]
>   >
>   > 将`Container`的`height`和`width`设置的非常大或者设置为`double.infinity`（即`1.0/0.0`）或`double.maxFinite`（即`1.797693134823157e+308`）时，`Container`大小为自适应，占满整个外部容器或屏幕
>
> * `child`：容器子元素
>
> ```dart
> decoration: BoxDecoration(
> 	color: Colors.blue, 	//背景填充颜色
> 	border: Border.all(
>  		color: Colors.red, 	//边框颜色
>  		width: 2.0	//边框宽度
> 	), 
> 	borderRadius: BorderRadius.circular(8), 	//圆角
> 	boxShadow: [
>     BoxShadow(
>  			color: Colors.blue, 	//背景阴影颜色
>  			offset: Offset(2.0, 2.0), 
>   		blurRadius: 10.0
>     )
>   ], 
> 	gradient: LinearGradient(
>     colors: [Colors.red, Colors.orange]
>   ),	//背景线性渐变，RacialGradient为径向渐变
> ),
> ```
>

> 注意`Container`不是常量构造函数，在使用时其外部函数或类不可以有`const`修饰
>
> ```dart
> import 'package:flutter/material.dart';
> 
> void main() {
> 	runApp(
>   	MaterialApp(
>     	home: Scaffold(
>    			appBar: AppBar(title: const Text('Hello Flutter!')),
>     		body: const MyApp()
> 			)
> 		)
>   );
> }
> 
> class MyApp extends StatelessWidget {
> 	const MyApp({Key? key}) : super(key: key);
> 
> 	@override
> 	Widget build(BuildContext context) {
>  		return Center(
>    		child: Container(
>      		alignment: Alignment.bottomRight,
>      		width: 100.0,
>      		height: 100.0,
>      		decoration: BoxDecoration(
>        		color: Colors.blue,
>        		border: Border.all(color: Colors.red, width: 2),
>        		borderRadius: BorderRadius.circular(10),
>        		boxShadow: const [
>          		BoxShadow(
>            		color: Colors.purple,
>            		blurRadius: 10.0,
>            		offset: Offset(2.0, 2.0)
>             )
>        		], 
>        		gradient:const LinearGradient(colors: [Colors.red, Colors.yellow])
>      		),
>      		child: const Text("Hello Flutter!",
>        		style: TextStyle(
>           	color: Colors.black, 
>           	fontSize: 20
>         	)
>      		)
>    		)
>  		);
> 	}
> }
> ```
>

> ##### **用`Container`创建一个按钮**
>
> ```dart
> import 'package:flutter/material.dart';
> 
> void main() {
> 	runApp(
>     MaterialApp(
> 			home: Scaffold(
>   			appBar: AppBar(title: const Text('Hello Flutter!')),
>    			body: const Column(
>      			children: [
>             MyApp(), 
>             MyButton()
>           ],
>    			)
>  			)
> 		)
>   );
> }
> 
> class MyApp extends StatelessWidget {
> 	const MyApp({Key? key}) : super(key: key);
> 
> 	@override
> 	Widget build(BuildContext context) {
> 		return Center(
>   		child: Container(
>      		alignment: Alignment.bottomRight,
>      		width: 100.0,
>      		height: 100.0,
>      		decoration: BoxDecoration(
>        		color: Colors.blue,
>        		border: Border.all(color: Colors.red, width: 2),
>        		borderRadius: BorderRadius.circular(10),
>        		boxShadow: const [
>          		BoxShadow(
>            		color: Colors.purple,
>            		blurRadius: 10.0,
>            		offset: Offset(2.0, 2.0)
>             )
>        		], 
>        		gradient:const LinearGradient(colors: [Colors.red, Colors.yellow])
>      		),
>      		child: const Text("Hello Flutter!",
>        		style: TextStyle(color: Colors.black, fontSize: 20)
>      		)
>    		)
>  		);
> 	}
> }
> 
> class MyButton extends StatelessWidget {
> 	const MyButton({Key? key}) : super(key: key);
> 
> 	@override
> 	Widget build(BuildContext context) {
> 		return Container(
>   		alignment: Alignment.center, 
>    		width: 200.0, 
>    		height: 40.0, 
>    		margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
>    		decoration: BoxDecoration(
>      		color: Colors.blue, 
>      		borderRadius: BorderRadius.circular(20.0)
>    		), 
>    		child: const Text('按钮', style: TextStyle(
>      		color: Colors.white,
>      		fontSize: 20 
>    		)
>  		);
> 	}
> }
> ```
>

#### `Text`文本组件

> 常用属性如下：
>
> * `textAlign`：文本对齐方式
>   * `center`：居中
>   * `left`：左对齐
>   * `right`：右对齐
>   * `justify`：两端对齐
> * `textDirection`：文本方向
>   * `ltr`：从左至右
>   * `rtl`：从右至左
> * `overflow`：文字超出屏幕之后的处理方式
>   * `clip`：裁剪
>   * `fade`：渐隐
>   * `ellipsis`：省略号
> * `textScaleFactor`：字体显示倍率
> * `maxLines`：文字显示最大行数
> * `style`：字体的样式设置，方法`TextStyle`

> `TextStyle`的参数
>
> * `decoration`：文字装饰线
>   * `none`：没有线
>   * `lineThrough`：删除线
>   * `overline`：上划线
>   * `underline`：下划线
> * `decorationColor`：文字装饰线颜色
> * `decorationStyle`：文字装饰线风格
>   * `deshed`/`dotted`：虚线
>   * `double`：双线
>   * `solid`：单实线
>   * `wavy`：波浪线
> * `wordSpacing`：单词间隙（负值会让单词更紧凑）
> * `letterSpacing`：字母间隙（负值会让字母更紧凑）
> * `fontStyle`：文字样式
>   * `italic`：斜体
>   * `normal`：正常体
> * `fontSize`：文字大小
> * `color`：文字颜色
> * `fontWeight`：字体粗细
>   * `bold`：粗体
>   * `normal`：正常体

#### `Image`图片组件

> `Image.asset('src')`加载本地图片
>
> `Image.network('src')`加载远程图片，不是常量构造函数，不能用`const`修饰
>
> 常用属性：
>
> * `alignment`：方法`Alignment`，控制图片在容器中的位置，在外部的`Container`中也可以实现
>   * `center`：居中
>   * `centerleft`：靠左
>   * `centerright`：靠右
> * `color`、`colorBlendMode`：设置图片的背景颜色两者通常配合起来使用就可以使图片和背景颜色混合
> * `fit`：根据父容器控制图片拉伸、挤压、裁剪
>   * `Boxfit.fill`：全图展示，图片被拉伸，充满父容器
>   * `Boxfit.contain`：全图展示，显示原比例可能会有空隙
>   * `Boxfit.cover`：图片显示可能拉伸、可能裁切，图片不变形地充满整个容器（最常用）
>   * `Boxfit.fitWidth`：图片显示可能拉伸、可能裁切，图片横向充满
>   * `Boxfit.fitHeight`：图片显示可能拉伸、可能裁切，图片竖向充满
>   * `Boxfit.scaleDown`：效果与`contain`相近，但是显示时图片大小不能超过源图片，可小不可大
> * `repeat`：平铺
>   * `ImageRepeat.repeat`：横纵向都重复，直到铺满整个画布
>   * `ImageRepeat.repeatX`：横向重复，纵向不重复
>   * `ImageRepeat.repeatY`：纵向重复，横向不重复
> * `height`与`width`：高、宽度，一般要结合`ClipOval`才能看到效果
>
> ```dart
> Image.network(
>   'url', 
> 	alignment: Alignment.centerleft
> )
> ```

> `ClipOval`实现圆角图片
>
> 圆角图片可以用`Container`组件的`borderRadius`属性来实现
>
> ```dart
> class Circular extends StatelessWidget {
> 	const Circular({Key? key}) : super(key: key);
> 
> 	@override
> 	Widget build(BuildContext context) {
>  		return Container(
> 			width: 150, 
> 			height: 150, 
> 			decoration: BoxDecoration(
> 				color: Colors.yellow, 
>  				image: DecorationImage(
>  					image: NetworkImage('url'), 
>    				fit: Boxfit.cover
>  				), 
> 				borderRadius: const BorderRadius.circular(value)
> 			)
> 		)
> 	}
> }
> ```
>
> 还可以使用`ClipOval`
>
> ```dart
> class ClipImage extends StatelessWidget {
> 	const ClipImage({Key? key}) : super(key: key);
> 
> 	@override
> 	Widget build(BuildContext context) {
> 	 	return ClipOval(
> 			child: Image.network(
>         'url', 
>    			width: 150, 
>      		height: 150, 
>      		fit: BoxFit.cover
>    		),
>  		)
> 	}
> }
> ```

> 加载本地图片
>
> 在`pubspec.yaml`文件中`flutter`里的`assets`下配置
>
> 如下
>
> ```yaml
> flutter:
>   	uses-material-design: true
>   	assets:
>     - images/myIcon.png
> ```
>
> 注意：**缩进**有问题就会加载失败！

#### `Icon`图标组件

> `Flutter`中有内置图标，使用`Icon`组件加载
>
> ```dart
> Icon(Icon.name, size:(value), color: Colors.color)
> ```
>
> 输入`Icon.`时`VS Code`会给我们提供大量图标，可在其中选择
>
> 也可以借助阿里巴巴图标库使用自定义图标
>
> 下载代码，将`.ttf`文件存入根目录下的`fonts`文件夹中
>
> 在`pubspec.yaml`中的`flutter`下配置
>
> ```yaml
> flutter:
>     fonts:
>     - family: myIcons
>       fonts:
>         - asset: fonts/qq_wechat.ttf
> ```
>
> 并在`lib`文件夹下新增文件`my_icon.dart`（以下载的QQ、微信图标举例）
>
> ```dart
> import 'package:flutter/material.dart';
> 
> class MyIcons {
>   static const IconData qq =IconData(
>     0xe629, 								//在下载的.json文件中查找到对应的unicode编号，前面加上 0x 表示十六进制
>     fontFamily: 'myIcons', 
>     matchTextDirection: true
>   );
>   static const IconData weixin = IconData(
>     0xe610, 
>     fontFamily: 'myIcons', 
>     matchTextDirection: true
>   );
> }
> ```
> 

#### `ListView`列表布局组件

> 列表有以下分类：
>
> * 垂直列表
> * 垂直图文列表
> * 水平列表
> * 动态列表
>
> 常见属性如下：
>
> * `scrollDirection`：列表方向
>   * `Axis.horizon`：水平列表
>   * `Axis.vertical`：垂直列表
> * `padding`：内边距设置，方法`EdgeInsetsGeometry`
> * `resolve`：`bool`类型，使组件反向排序
> * `childern`：列表元素，是一个`Widget`数组
>   * `Divider`：分割线
>   * `ListTile`：列表项（图片文字水平分布的列表由`ListTile`实现）
>     * `title`：添加标题
>     * `suntitle`：添加副标题
>     * `leading`：在列表项前添加图标或图片
>     * `trailing`：在列表项后添加图标或图片
>     * `onTap`：配置点击事件
>   * `Image`、`Container`、`Column`等组件（垂直分布的图片及图片名由这两个组件搭配实现）
>
> *在垂直列表中列表项`Container`组件宽度自适应，无法重新设定，需要指定高度*
>
> *在水平列表中列表项`Container`组件高度自适应，无法重新设定，需要指定宽度*
>
> *需要控制自适应的宽度/高度，可在`ListView`组件外层加`SizedBox`或`Container`设置宽/高度*

> ##### **通过循环实现`ListView`动态列表**
>
> `ListView`的`children`属性的返回值的一个元素均为`Widget`的`List`，因此可以用方法生成该数组来实现动态列表
>
> 1. 用`for`循环遍历数组
>
> ```dart
> class MyHomePage extends StatelessWidget {
> const MyHomePage({Key? key}): super(key: key);
> 
> //自定义方法
> List<Widget> _initListData(){
>  List<Widget> list=[];
>  for(var i=0; i<20; i++) {
>    list.add(
>    	ListTile(
>      	title: Text('I\'m List${i}')
>      )
>    );
>  }
>  return list;
> }
> 
> @override
> Widget build(BuildContext context) {
>  return ListView(
>  	children: _initListData(),
>  );
> }
> }
> ```
>
> ```dart
> import './list_data.drat';
> 
> class MyHomePage extends StatelessWidget {
> MyHomePage({Key? key}): super(key: key) {
>  print(listData);
> }
> 
> //自定义方法
> List<Widget> _initListData(){
>  List<Widget> tempList=[];
> 
>  for(var i=0; i<20; i++) {
>    tempList.add(
>    	ListTile(
>      	title: Text('${listData[i]['title']}'), 
>        subtitle: Text('${listData[i]['author']}'), 
>      )
>    );
>  }
>  return tempList;
> }
> 
> @override
> Widget build(BuildContext context) {
>  return ListView(
>  	children: _initListData(),
>  );
> }
> }
> ```
>
> 2. 用`map`方法遍历数组
>
> ```dart
> import './list_data.drat';
> 
> class MyHomePage extends StatelessWidget {
> 	MyHomePage({Key? key}): super(key: key) {
>  		print(listData);
> 	}
> 
> 	//自定义方法
> 	List<Widget> _initListData(){
>  		var tempList=listData.map((value){
>    		return ListTile(
>       	title: Text('${value['title']}'), 
>         subtitle: Text('${value['author']}'), 
>       );
> 	 	});
> 		return tempList.toList();
> }
> 
> 	@override
> 	Widget build(BuildContext context) {
>  		return ListView(
>  			children: _initListData(),
>  		);
> 	}
> }
> ```
>
> 3. `ListView.builder`构造函数遍历数组生成动态列表
>
> ```dart
> class MyHomePage extends StatelessWidget {
>   List<String> list=[];
> 	MyHomePage({Key? key}): super(key: key){
>     for(var i=0; i<20; i++){
>       list.add('I\'m List${i}');
>     }
>   }
> 
> 	@override
> 	Widget build(BuildContext context) {
>  		return ListView.builder(
>     	itemCount: list.length, 
>       itemBuilder: (content, index){
>         return ListTile(
>         	title: Text('${list[index]}'), 
>         );
>       }, 
>     );
> 	}
> }
> ```
>
> ```dart
> import './list_data.drat';
> 
> class MyHomePage extends StatelessWidget {
>   List<String> list = [];
>   MyHomePage({Key? key}) : super(key: key);
> 
>   @override
>   Widget build(BuildContext context) {
>     return ListView.builder(
>         itemCount: listData.length,
>         itemBuilder: (content, index) {
>           return ListTile(
>             title: Text(listData[index]['title']),
>             subtitle: Text(listData[index]['author']), 
>           );
>         });
>   }
> }
> 
> ```

#### `GridView`网格布局组件

> 主要有三种方式：
>
> * `GridView.count`
>
>   ```dart
>   class MyHomePage extends StatelessWidget {
>     const MyHomePage({Key? key}) : super(key: key);
>   
>     @override
>     Widget build(BuildContext context) {
>       return GridView.count(
>         crossAxisCount: 3,
>         children: const [
>           Icon(Icons.pedal_bike), 
>           Icon(Icons.home), 
>           Icon(Icons.ac_unit), 
>           Icon(Icons.search), 
>           Icon(Icons.settings), 
>           Icon(Icons.airport_shuttle), 
>           Icon(Icons.all_inclusive), 
>           Icon(Icons.beach_access), 
>           Icon(Icons.cake), 
>           Icon(Icons.circle), 
>         ]
>       );
>     }
>   }
>   ```
>
> * `GridView.extent`
>
>   ```dart
>   class MyHomePage extends StatelessWidget {
>     const MyHomePage({Key? key}) : super(key: key);
>   
>     @override
>     Widget build(BuildContext context) {
>       return GridView.extent(
>         maxCrossAxisExtent: 180.0,
>         children: const [
>           Icon(Icons.pedal_bike), 
>           Icon(Icons.home), 
>           Icon(Icons.ac_unit), 
>           Icon(Icons.search), 
>           Icon(Icons.settings), 
>           Icon(Icons.airport_shuttle), 
>           Icon(Icons.all_inclusive), 
>           Icon(Icons.beach_access), 
>           Icon(Icons.cake), 
>           Icon(Icons.circle), 
>         ]
>       );
>     }
>   }
>   ```
>
> * `GridView.builder`

> 常用属性：
>
> * `scrollDirection`
>
>   方法`Axis`，设置滚动方法
>
> * `padding`
>
>   方法`EdgeInsetsGeometry`，设置内边距
>
> * `resolve`
>
>   `bool`类型，设置组件反向排序
>
> * `crossAxisSpacing`
>
>   `double`类型，设置水平子`Widget`之间的距离
>
> * `mainAxisSpacing`
>
>   `double`类型，设置垂直子`Widget`之间的距离
>
> * `crossAxisCount`
>
>   用在`GridView.count`中，`double`类型，设置一行的`Widget`个数
>
> * `maxCrossAxisExtent`
>
>   用在`GridView.extent`，`double`类型，设置横轴子元素的最大比例
>
> * `gridDelegate`
>
>   用在`GridView.builder`中，实现`GridView.count`或`GridView.extent`的功能来控制布局
>
>   有抽象类`SilverGridDelegate`
>
>   * `SilverGridDelegrateWithFixedCrossedAxisCount`
>
>     实现`GridView.count`的功能
>
>   * `SilverGridDelegrateWithMaxCrossedAxisExtent`
>
>     实现`GridView.extent`的功能
>
> * `childAspectRatio`
>
>   `double`类型，子`Widget`的宽高比例
>
> * `children`
>
>   子元素数组

> ##### **`GridView`动态列表**
>
> 1. `for`循环
>
> ```dart
> class MyHomePage extends StatelessWidget {
>   const MyHomePage({Key? key}) : super(key: key);
> 
>   List<Widget> _initGridViewData() {
>     List<Widget> tempList = [];
>     for (var i = 0; i < 12; i++) {
>       tempList.add(
>         Container(
>           alignment: Alignment.center,
>           decoration: const BoxDecoration(
>             color: Colors.blue,
>           ),
>           child: Text('Item $i',
>             style: const TextStyle(
>               fontSize: 40,
>             )
>           )
>         ),
>       );
>     }
>     return tempList;
>   }
> 
>   @override
>   Widget build(BuildContext context) {
>     return GridView.count(
>       padding: const EdgeInsets.all(10.0)
>       crossAxisCount: 2,
>       crossAxisSpacing: 20.0,
>       mainAxisSpacing: 20.0,
>       children: _initGridViewData(),
>     );
>   }
> }
> ```
>
> 2. `map`遍历
>
> ```dart
> class MyHomePage extends StatelessWidget {
>   const MyHomePage({Key? key}) : super(key: key);
> 
>   List<Widget> _initGridViewData() {
>     var tempList = listData.map((value){
>       return Container(
>         decoration: BoxDecoration(
>           border: Border.all(
>             color: Colors.black26, 
>           ), 
>         ), 
>         child: Column(
>           children: [
>             Text(value['title'], style: const TextStyle(fontSize: 20.0)), 
>             const SizedBox(height: 50.0), 
>             Text(value['author'], style: const TextStyle(fontSize: 20.0)), 
>           ],
>         ), 
>       );
>     });
> 
>     return tempList.toList();
>   }
> 
>   @override
>   Widget build(BuildContext context) {
>     return GridView.count(
>       padding: const EdgeInsets.all(10.0), 
>       crossAxisCount: 2,
>       crossAxisSpacing: 20.0,
>       mainAxisSpacing: 20.0,
>       children: _initGridViewData(),
>     );
>   }
> }
> 
> ```
>
> 3. `GridView.builder`
>
> ```dart
> class MyHomePage extends StatelessWidget {
>   const MyHomePage({Key? key}) : super(key: key);
> 
>   Widget _initGridViewData(context, index) {
>     return Container(
>       decoration: BoxDecoration(
>         border: Border.all(
>           color: Colors.black26, 
>         ), 
>       ), 
>       child: Column(
>         children: [
>           Text(listData[index]['title'], style: const TextStyle(fontSize: 20.0)), 
>           const SizedBox(height: 50.0), 
>           Text(listData[index]['author'], style: const TextStyle(fontSize: 20.0)), 
>         ],
>       ), 
>     );
>  }
> 
>   @override
>   Widget build(BuildContext context) {
>     return GridView.builder(
>       padding: const EdgeInsets.all(10.0), 
>       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
>         crossAxisCount: 2,
>         crossAxisSpacing: 20.0,
>         mainAxisSpacing: 20.0,
>       ),
>       itemBuilder:  _initGridViewData,
>       itemCount: listData.length,
>     );
>   }
> }
> ```

> [!tip]
>
> 尽量把`children`放在最后，以免报错

#### 页面布局组件

 ##### `Padding`组件

> 属性：
>
> * `padding`
>
>   方法`EdgeInsets`设置距离
>
>   * `all`
>   * `fromLTRB(left, top, right, bottom)`
>
> * `child`
>
>   子组件
>
> `Padding`组件功能非常单一，只用于设置组件间的距离
>
> 但是也因此占据内存小于`Container`组件

 ##### 线性布局组件`Row`与`Column`

> `Row`为横向，宽度自适应
>
> `Column`为纵向，高度自适应

> 常用属性：
>
> * `mainAxisAlignment`
>
>   设置主轴（`Row`水平方向，`Column`垂直方向）的排序方式，方法`MainAxisAlignment`
>
>   * `spaceAround`：中间间距是左右两边间距的两倍
>   * `spaceBetween`：一左一右分布
>   * `spaceEvenly`：左右平均分布
>
> * `crossAxisAlignment`
>
>   设置次轴（`Row`垂直方向，`Column`水平方向）的排序方式，方法``CrossAxisAlignment``
>
>   相对于组件的外部的`Container`生效，如果外部没有`Container`的话就没有效果
>
>   * `center`：居中
>   * `start`：`Row`为顶部，`Column`为居左
>   * `end`：`Row`为底部，`Column`为居右
>
> * `children`
>
>   子元素组件列表

##### 弹性布局组件`Flex`与`Expanded`

> 宽度根据屏幕按比例自适应时可以用`Flex`布局实现

> `Row`和`Column`都继承自`Flex`，参数基本相同，因此可以用`Flex`的地方也可以用`Row`和`Column`

> `Flex`本身功能很强大，可以和`Expanded`组件配合实现弹性布局
>
> （可以直接调用`Flex`，也可以用`Row`或`Column`来和`Expanded`配合）

> `Expanded`属性：
>
> * `flex`：表示元素占比的份额
> * `child`：子元素
>
> 如：一行有两个元素，一个占三分之一，另一个占三分之二
>
> ```dart
> class MyHomePage extends StatelessWidget{
> 	const MyHomePage({Key? key}): super(key: key);
>   @override
>   Widget build(BuildContext context) {
>     return Row(
>       children: [
>         Expanded(
>           flex: 1, 
>         	child: IconContainer(Icons.home, color: Colors.blue), 
>         ), 
>         Expanded(
>           flex: 2, 
>         	child: IconContainer(Icons.search, color: Colors.green), 
>         ), 
>       ]
>     );
>   }
> }
> ```
>
> 此时在`child`元素中设置宽度是没有效果的

> `Flex`属性：
>
> * `direction`：表示水平或垂直的方向，方法`Axis`
>   * `horizontal`：表示水平，效果和`Row`一样
>   * `vertical`：表示垂直，效果和`Column`一样
> * `children`：子元素数组
>
> 如上也可替换成
>
> ```dart
> class MyHomePage extends StatelessWidget{
> 	const MyHomePage({Key? key}): super(key: key);
>   @override
>   Widget build(BuildContext context) {
>     return Flex(
>     	direction: Axis.horizontal, 
>       children: [
>         Expanded(
>           flex: 1, 
>         	child: IconContainer(Icons.home, color: Colors.blue), 
>         ), 
>         Expanded(
>           flex: 2, 
>         	child: IconContainer(Icons.search, color: Colors.green), 
>         ), 
>       ]
>     );
>   }
> }
> ```

> 如：
>
> ```dart
> //左边自适应，右边固定宽度
> class MyHomePage extends StatelessWidget{
> 	const MyHomePage({Key? key}): super(key: key);
>   @override
>   Widget build(BuildContext context) {
>     return Flex(
>     	direction: Axis.horizontal, 
>       children: [
>         Expanded(
>           flex: 1, 
>         	child: IconContainer(Icons.home, color: Colors.blue), 
>         ), 
>         IconContainer(Icons.search, color: Colors.green),  
>       ]
>     );
>   }
> }
> ```

> 又如：
>
> ```dart
> class MyHomePage extends StatelessWidget{
> 	const MyHomePage({Key? key}): super(key: key);
>   @override
>   Widget build(BuildContext context) {
>     return ListView(
>     	children: [
>         Container(
>           width: double.infinity, 
>           height: 200.0, 
>           color: Colors.black, 
>           child: Image.asset(
>             'images/myIcon.png', 
>             fit: BoxFit.cover
>           ), 
>         ), 
>         Container(
>           width: double.infinity, 
>           height: 200.0, 
>           color: Colors.black, 
>           child: Row(
>             children:[
>               Expanded(
>                 flex: 2, 
>                 child: Image.asset(
>                   'images/myIcon.png', 
>                   fit: BoxFit.cover
>                 ), 
>               ), 
>               Expanded(
>                 flex: 1, 
>                 child: SizedBox(
>                   height:double.infinity,  
>                   child: Column(
>                     children: [
>                       Expanded(
>                         flex:1,
>                         child: Image.asset(
>                           'images/myIcon.png', 
>                           fit: BoxFit.cover
>                         ),
>                       ), 
>                       Expanded(
>                         flex:1,
>                         child: Image.asset(
>                           'images/myIcon.png', 
>                           fit: BoxFit.cover
>                         ),
>                       ), 
>                     ]
>                   ),
>                 )
>               ),
>             ]
>           ),
>         ), 
>       ]
>     );
>   }
> }
> ```
>

 #### `Stack`层叠组件与`Positioned`组件、`Align`组件

##### `Stack`组件

> 可以实现浮动导航、二级导航

> 属性：
>
> * `alignment`：配置子元素显示位置
> * `children`：子元素集合

##### `Stack`组件与`Positioned`组件实现页面定位布局

> `Positioned`组件是相对于`Stack`组件的外层组件进行定位的（没有外部容器就相对于整个屏幕）

> 常用属性：
>
> * `top`：子元素与顶部的距离
> * `bottom`：子元素与底部的距离
> * `left`：子元素与左侧的距离
> * `right`：子元素与右侧的距离
> * `height`：高度（这里不能用`double.infinity`）
> * `width`：宽度（这里不能用`double.infinity`）
> * `child`：子组件

> **实现页面顶部/底部浮动导航**
>
> ```dart
> class HomePage extends StatelessWidget {
>   const HomePage ({super.key});
>   
>   @override
>   Widget build(BuildContext context) {
>     return Stack(
>     	children: [
>         ListView(
>           children: const [
>             ListTile(title: Text('ListTile 1'), ), 
>             ListTile(title: Text('ListTile 2'), ), 
>             ListTile(title: Text('ListTile 3'), ), 
>           ]
>         ), //ListView
>         Positioned(
>           left: 0, 
>           top: 0, 
>           width: 300, 
>           height: 44, 
>           child: Row(
>             children: [
>               Expanded(
>                 flex: 1, 
>                 child: Container(
>                   alignment: Alignment.center, 
>                   height: 44, 
>                   color: Colors.blue, 
>                   child: const Text(
>                     '二级导航', 
>                     style: TextStyle(
>                       color: Colors.white
>                     ), 
>                   )
>                 )
>               )
>             ], 
>           ), 
>         )
>       ]
>     ); 
>   }
> }
> ```

##### `FlutterMediaQuery`获取屏幕宽度和高度

> 用在组件的`build`方法中
>
> 通过`MediaQuery.of(context).size;`来获取屏幕宽度和高度
>
> ```dart
> Widget build(BuildContext context) {
>   final size = MediaQuery.of(context).size;
>   final width = size.width;
>   final height = size.height;
> }
> ```

##### `Align`组件

>常用属性：
>
>* `alignment`：配置子元素的显示位置
>
>  除了`Alignment.center`、`Alignment.topLeft`等，还可以传入`(x,y)`参数
>
>  `Alignment`会以矩形的中心点为坐标原点，`x`、`y`的值从-1到1分别代表矩形*左边*到*右边*/*顶部*到*底部*的距离
>
>* `child`：子组件

> `Center`组件是`Align`组价的子组件

#### `AspextRatio`、`Card`、`CircleAvatar`组件

##### `AspextRatio`组件

> `AspextRatio`组件可以调整子元素的宽高比
>
> 首先会在布局限制条件允许的范围内尽可能扩展，`Widget`的高度有宽度和宽高比来决定，类似于`BoxFit.contain`，按照固定比率占满区域
>
> 如果满足限制条件后无法找到可行的尺寸，`AspectRatio`最终将会去有限适应布局限制条件而不是所设置的比率

> 常用属性：
>
> * `aspectRatio`：宽高比，不指定会根据这个值来布局，只是一个参考值
> * `child`：子组件

##### `Card`组件

> 卡片组件块，具有圆角和阴影

> 常用属性：
>
> * `margin`：外边距
>
> * `elevation`：阴影深度
>
> * `color`：背景颜色
>
> * `shadowColor`：阴影颜色
>
> * `clipBehavior`：内容溢出的剪切方式，方法`Clip`
>
>   * `none`：不剪切
>   * `hardEdge`：裁剪但是不应用抗锯齿
>   * `antiAlias`：带有抗锯齿的剪辑
>   * `antiAliasWithSaveLayer`：带有抗锯齿的剪辑，并在剪辑之后立即保存`saveLayer`
>
> * `shape`：阴影效果，默认的阴影效果为圆角的长方形边
>
>   ```dart
>   shape: const RoundRextangleBorder(
>     borderRadius: BorderRadius.all(Radius.circular(10))
>   ), 
>   ```
>
> * `child`：子组件

##### `CircleAvatar`组件

> 圆形图片的第三种实现方法（`Container`设置最大圆角，`ClipOval`实现圆形图片）

> 属性：
>
> * `radius`：设置图片半径
>
> * `backgroundImage`：配置图片url

> `CircleAvatar`组件不提供边框属性，但是可以用具有更大半径和不同步背景颜色的`CircleAvatar`来包裹之，以创建类似于边框的效果

##### 传入动态参数

> 与`ListView`与`GridView`类似

> ```dart
> class LayoutDemo extends StatelessWidget {
>   const LatoutDemo(super.key);
>   
>   List<Widget> _initCardData(){
>     var tempList = listData.map((value){
>       return Card(
>         shape: const RoundRextangleBorder(
>           borderRadius: BorderRadius.all(Radius.circular(10))
>         ),
>         elevation: 20, 
>         margin: const EdgeInsets.all(10), 
>         child: Column(
>         	children: [
>             AspectRatio(
>             	aspextRatio: 16 / 9, 
>               child: Image.asset('images/myIcon.png'), 
>             ), 
>             ListTile(
>               title: Text(value['title']), 
>               subtitle: Text(value['author'])
>             )
>           ]
>         )
>       )
>     });
>     return tempList.toList();
>   }
>   
>   @override
>   Widget build(BuildContext context) {
>     return ListView(
>       children: _initCardData(), 
>     );
>   }
> }
> ```

#### 按钮组件

> `Flutter`中提供的按钮组件有`ElevatedButton`凸起按钮、`TextButton`文本按钮、`OutlinedButton`带边框的按钮、`IconButton`图标按钮等，也可以自定义按钮

> 属性：
>
> * `style`：方法`ButtonStyle`，各个属性的方法都是`MaterialStateProperty.all(value)`
>
>   * 背景颜色`backgroundColor`与字体（图标）颜色`foregroundColor`
>
>     `value`填入颜色，如：`Colos.red`
>
>   * 形状`shape`
>
>     * `RoundedRectangleBorder`方法，其中有`borderRadius`属性设置圆角
>
>     * `CircleBorder`方法，其中有`side`属性配置设置圆形按钮以及其边框颜色、宽度等
>
>       如：`side: BorerSide(width: 10, color: Colors.whie)`
>
> * `onPressed`：点击按钮式触发的方法`(){}`，注意不是常量构造函数
>
> * `child`：子组件

##### `ElevatedButton`凸起按钮

> 默认带有阴影和灰色背景，按下后阴影会变大

##### `TextButton`文本按钮

> 默认背景透明不带阴影，按下后会有背景色

##### `OutlinedButton`带边框的按钮

> 默认为灰色边框
>
> 利用`style`属性中的`side`属性，使用`BorderSide`来配置边框属性

##### `IconButton`图标按钮

> `child`为`Icon`的按钮

##### 带图标的按钮

> 使用`Button`中的命名构造函数来得到带图标（`icon`）与文字（`label`）的按钮

##### 自适应的按钮

> 按钮组件没有宽度高度的设置，可以在`Button`组件外层增加`Container`或`SizedBox`组件，配置外层容器的宽度高度，按钮会充满整个容器
>
> 通过在按钮外层添加`Expanded`组件来使按钮自适应铺满整个屏幕

#### `Wrap`组件

> `Wrap`组件可以实现流布局，单行的`Wrap`与`Row`几乎一致，单列的`Wrap`与`Column`几乎一致
>
> 但是`Wrap`不止可以是单行的，主轴方向空间不够时会向`crossAxis`方向扩展显示

> 常用属性：
>
> * `direction`：主轴方向，默认水平
>
> * `alignment`：主轴的对齐方式
>
> * `spacing`：主轴方向上的间距
>
> * `textDirection`：文本方向
>
> * `verticalDirection`
>
>   定义了`children`的摆放顺序，默认是`down`，见`Flex`相关属性介绍
>
> * `runAlignment`：`run`的对齐方式
>
>   `run`可以理解为新的行或者列
>
>   如果是水平方向布局，可以理解为新的一行
>
> * `children`：子元素数组



### `StatefulWidget`有状态组件

> 可输入代码块`StatefulW`来自动生成`StatefulWidget`有状态组件，如下
>
> ```dart
> class HomePage extends StatefulWidget {
>   const HomePage({super.key});
> 
>   @override
>   State<HomePage> createState() => _HomePageState();
> }
> 
> class _HomePageState extends State<HomePage> {
>   @override
>   Widget build(BuildContext context) {
>     return Container();
>   }
> }
> ```
>
> 有需要变化的数据，在`_HomePageState`中定义，在改变处（如`Button`组件的`OnPress`属性）使用`setState((){});`即可对数据进行改变

#### 实现动态列表

> ```dart
> class MyApp extends StatelessWidget {
>   const MyApp({super.key});
> 
>   @override
>   Widget build(BuildContext context) {
>     return MaterialApp(
>       title: 'Mt Demo 04',
>       theme: ThemeData(
>         primarySwatch: Colors.blue
>       ),
>       home: const HomePage(), 
>     );
>   }
> }
> 
> class HomePage extends StatefulWidget {
>   const HomePage({super.key});
> 
>   @override
>   State<HomePage> createState() => _HomePageState();
> }
> 
> class _HomePageState extends State<HomePage> {
>   final List<String> _list=[];
>   int _countNum=0;
> 
>   @override
>   Widget build(BuildContext context) {
>     return Scaffold(
>       appBar: AppBar(title: const Text('Demo004'),), 
>       floatingActionButton: FloatingActionButton(
>         onPressed: (){
>           setState(() {
>             _countNum++;
>             _list.add('我是新增列表$_countNum');
>           });
>         },
>         child: const Icon(Icons.add),
>         ),
>       body: ListView(
>         children: 
>           _list.map((v){
>             return ListTile(
>               title: Text(v),
>               );
>           }).toList(), 
>       ),
>     );
>   }
> }
> ```
>

### `Scaffold`组件

> 是Material Design布局结构地实现，提供了用于显示drawer、snackbar和底部sheet的API
>
> 主要属性：
>
> * `appBar`：显示在界面顶部的一个`AppBar`
>  * `body`：当前界面所显示的主要内容`Widget`
> * `drawer`：抽屉菜单控件
> * `floatingActionButton`：在右下角创建一个浮动的按钮
> * `bottomNavigationBar`：自定义底部导航条

#### `floatingActionButton`

> 常用属性：
>
> - `child`：子组件，一般为`Icon`，不推荐使用文字
> - `tooltip`：FAB被长按时显示，也是无障碍功能
> - `background`：背景颜色
> - `elevation`：未点击时候的阴影
> - `highlightElevation`：点击时阴影值，默认12.0
> - `onPressed`：点击时回调事件
> - `shape`：定义FAB的形状
> - `mini`：小图标，默认为`False`

#### `bottomNavigationBar`自定义导航

> `BottomNavigationBar`是底部导航条，可以让我们用底部`Tab`切换

> 常见属性：
>
> * `items`：必选，`List`类型，底部导航条按钮集合
>
>   成员是`BottomNavigatorBarItem`
>
> * `iconSize`：图标大小
>
> * `currentIndex`：默认选中第几个
>
> * `onTap`：选中变化回调函数，即点击菜单时调用的方法
>
> * `fixedColor`：选中的颜色
>
> * `type`（如果底部有四个或四个以上的菜单时需要配置）
>   
>   * `BottomNavigationBarType.fixed`
>   * `BottomNavigationBarType.shifting`

#### `drawer`侧边栏

> 常用属性：
>
> - `child`：子组件，通常为`Column`
> - `endDrawer`：右侧侧边栏

> `DrawerHeader`侧边栏头部
>
> 属性：
>
> - `decoration`：设置顶部背景颜色
> - `child`：子组件
> - `padding`：内边距
> - `margin`：外边距

> `UserAccountsDrawerHeader`用户侧边栏
>
> 属性：
>
> - `decoration`
> - `accountName`
> - `accountEmail`
> - `currentAccountPicture`：常与`CircleAvatar`配合来生成圆形图片
> - `otherAccountPictures`
> - `margin`

#### `AppBar`、`TabBar`、`TabBarView`实现顶部滑动导航

> `AppBar`参数：
>
> - `leading`：左侧图标
>
>   在标题前显示的一个软件，在首页通常显示应用的logo
>
>   在其他界面通常为返回按钮
>
> - `title`：标题，通常为当前界面的标题文字，内容是组件
>
> - `actions`：右侧图标，通常使用`IconButton`来表示，内容为按钮
>
> - `bottom`：内容通常为`tabBar`，标题下面显示一个`Tab`导航栏
>
> - `backgroundColor`：导航背景颜色
>
> - `iconTheme`：图标样式
>
> - `centerTitle`：标题是否居中显示

> `TabBar`参数：
>
> - `tabs`：显示的标签内容，一般使用`Tab`对象，也可以是其他`Widget`
> - `controller`：对象为`TabController`
> - `isScrollable`：是否可滚动
> - `indicatorColor`：指示器颜色
> - `indicatorWeight`：指示器高度
> - `indicaorPadding`：底部指示器的`padding`
> - `indicatorSize`：指示器大小计算方式
>   - `TabBarIndicatorSize.label`：跟文字等宽
>   - `TabBarIndicatorSize.tab`：跟每个`tab`等宽
> - `indiicator`：指示器`decoration`，例如边框等
> - `labelColor`：选中`label`的颜色
> - `labelStyle`：选中`label`的`Style`
> - `labelPadding`：每个`label`的`padding`值
> - `unselectedLabelColor`：未选中`label`的颜色
> - `unselectedLabelStyle`：未选中`label`的`Style`







## 路由

> 路由就是页面的跳转
>
> 可以用`Navigator`组件来管理路由导航并提供了管理堆栈的方法，如`Navigator.push`、`Navigator.pop`
>
> `Flutter`中有两种配置路由跳转的方式：
>
> * 基本路由/普通路由
> * 命名路由

#### 普通路由

> 1. 在`HomePage`组件中引入`search_page.dart`中的`SearchPage`组件
>
>    ```dart
>    import 'pages/search_page.dart';
>    ```
>
> 2. 在`HomePage`中通过如下方法跳转
>
>    ```dart
>    Center(
>      child: ElevatedButton(onPressed: (){
>        Navigator.of(context).push(
>          MaterialPageRoute(builder: (context){
>            return const SearchPage(); 
>          });
>        }, 
>        child: const Text('跳转！')
>      ), 
>    )
>    ```
>
>    
