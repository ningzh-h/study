### Dart语言

[toc] 

> Java，Kotlin，Swift，Object-C， JavaScript，Vue.js大合体！

#### 命名原则

> 使用小写字母，每一个单词间用下划线`_`隔开

#### 入口方法

```dart
main(){
    
}
```

```dart
void main(){
    
}
```

> 表示main函数没有返回值
>
> 一行代码后要有分号



#### 注释

`//单行注释1``///单行注释2`

```dart
/*
*多行注释
*/
```

```dart
///文档注释
///文档注释
```



#### 变量

```dart
void main(){
    var str='Hello Dart!';
    var num=1234;
    print(str);
    print(num);
}
```

##### 变量初始化

> 关键字`var`可以自动推断变量类型
>
> 也可以用相应关键字来指定变量类型

> 空安全：编译器禁止对`null`值的访问
>
> 因此，在使用非空变量之前必须初始化它的值，或在使用前对其赋值

> 变量命名规则：
>
> 1. 只能由数字、字母、下划线、美元符组成
> 2. 开头不是数字
> 3. 不能是保留字关键字
> 4. 区分大小写
> 5. 变量用名词，方法用动词

##### 延迟初始化变量

> 关键字`late`
>
> 如果确定变量在使用之前已经设置，但是dart推断错误，可以用`late`解决问题

```dart
late String examlpe;

void main(){
    example = 'what?';
    print(example);
}
```

> `late`修饰的变量指定了初始化方法，在第一次使用时进行初始化
>
> 在以下情况`late`延迟初始化会很方便
>
> 1. 之后可能不用该变量，且初始化开销很大
> 2. 实例变量，初始化方法需要调用`this`

##### 终值 `final `与常量 `const` 

> `final` 与 `const` 在设置后不可更改
>
> 一个 `final` 只能设置一次，允许先声明后赋值，赋值后不可改变
>
> `const` 变量为编译时常量（`const` <`final`），永久不可改变

> 实例变量可以是`final`，不可以是`const`

> `const`位于_类级别_ 时，应标记为 `static const`

> `const` 可用于创建常量值，以及声明创建常量值的构造函数

```dart
var foo = const[];
final bar = const[];
const baz = []; // 相当于const baz = const[]
foo = [1, 2, 3]; // 相当于const[1, 2, 3]
```

> 可以省略`const`声明中的值的`const`修饰，类似如上`baz`
>
> 如果值没有被`const`修饰，即使它以前被`const`修饰，也可以修改这个变量，如上`foo`

> 定义常量时可以使用类型检查和转换（`is`和`as`）、集合中的if和展开操作符（`...`和`...?`）

> `final`对象不能被改变，但是它的字段可以被更改
>
> 即如果对`final`的对象`List`或者`Map`增加数据，仍然可以正常运行不会报错
>
> `const`对象及其字段都不能被更改



#### 变量类型

##### 字符串`String`

> 用' '或" "只能写一行，用''' '''可以写多行
>
> 字符串的拼接：
>
> * 方法一：`print('$str1 $str2');`
> * 方法二：`print(str1 + str2);`

##### 数值类型`int`与 `double`

> 整型`int`
>
> 浮点型`double`

##### 布尔类型`bool`

> 只能是true或false，否则报错

##### 数组/集合类型`List`/`Set`

> **`List`类型**
>
> 有序的数组
>
> * 定义方式一：任意类型
>
>   `var l1 = ['ning', 15, true];`
>
>   集合长度`print(l1.length);//3`
>
>   集合下标`print(l1[0]);//ning`
>
> * 定义方式二：指定类型
>
>   `var l2 = <int>[2, 4];`
>
> * 定义方式三：增加数据
>
>   ```dart
>   var l3 = [];
>   print(l3);//[]
>   print(l3.length);//0
>   l3.add('ning');
>   l3.add(12);
>   ptint(l3);//['ning', 12]
>   print(l3.length);//2
>   ```
>
>   通过`[]`创建的集合容量都是可以自由变化的
>
> * 定义方式四：固定长度
>
>   `var li = List.filled(length, fill);`
>
>   e.g.`var l4 = List.filled(2, '');`
>
>   无法再通过li.add或li.length改变长度
>
>   使用下标的方式修改填充数据

> **`Set`类型**
>
> 无序且不能重复的集合，因此不能通过下标来获取值
>
> ```dart
> var s=new Set();
> s.add('111');
> s.add('222');
> s.add('222');
> print(s);//{111, 222}
> ```
>
> 可用于List去重
>
> ```dart
> List myList=['111', '222', '111'];
> 
> var s=new Set();
> s.addAll(myList);
> print(s);
> //{111, 222}
> print(s.toList);
> //[111, 222]
> ```

> **`List`中常用的属性与方法**
>
> | 常用属性   | 描述       |
> | ---------- | ---------- |
> | length     | 长度       |
> | reversed   | 翻转       |
> | isEmpty    | 是否为空   |
> | isNotEmpty | 是否不为空 |
>
> ```dart
> List myList=['111', '222', '333'];
> print(myList.reversed);//（333, 222, 111）
> 
> var newMyList=myList.reversed.toList();
> print(newMyList);//[333, 222, 111]
> ```
>
> | 常用方法                 | 描述                   |
> | ------------------------ | ---------------------- |
> | `add`                    | 增加单个数据           |
> | `addAll`                 | 增加多个数据，拼接数组 |
> | `indexOf`                | 查找，输入具体值       |
> | `remove`                 | 删除，输入具体值       |
> | `removeAt`               | 删除，输入下标值       |
> | `fillRage`               | 修改，替换             |
> | `insert(index, value)`   | 指定位置插入           |
> | `insertAll(index, List)` | 指定位置插入`List`     |
> | `toList()`               | 将其它类型转化成`List` |
> | `join()`                 | 将`List`转换成字符串   |
> | `split()`                | 将字符串转化成`List`   |
>
> ```dart
> List myList=['111', '222', '333'];
> 
> myList.add('444');
> print(myList);
> //[111, 222, 333, 444]
> 
> myList.addAll(['555', '666']);
> print(myList);
> //[111, 222, 333, 444, 555, 666]
> print(myList.indexOf('222'));
> //222
> //查找到返回目标值的下标值，查找不到返回-1
> 
> myList.remove('333');
> print(myList);
> //[111, 222, 444, 555, 666]
> 
> myList.removeAt(0);
> print(myList);
> //[222, 444, 555, 666]
> 
> myList.fillRange(1, 3, 'aaa');
> print(myList);
> //[222, aaa, aaa, aaa]
> //fillRange(开始位置下标, 结束位置下标, 替换内容);
> 
> myList.insert(1, 'bbb');
> print(myList);
> //[222, bbb, aaa, aaa, aaa]
> myList.insertAll(1, 'ccc', 'ddd');
> print(myList);
> //[222, ccc, ddd, bbb, aaa, aaa, aaa]
> //若输入的第一个数值为i，则在List[i]前List[i-1]后插入内容
> 
> var str=myList.join('-');
> print(str);
> //222-ccc-ddd-bbb-aaa-aaa-aaa
> //join('分隔符')
> 
> var list=str.split('-');
> print(list);
> //[222, ccc, ddd, bbb, aaa, aaa, aaa]
> print(list is List);
> //true
> 
> var s=new Set();
> s.add('111');
> s.add('222');
> print(s);
> //{111, 222}
> print(s.toList());
> //[111, 222]
> ```

##### 字典类型`Maps`

> **映射（`Maps`）是无序的键值对**
>
> * 定义方式一：
>
>   ```dart
>   var me = {
>       'lastName': 'ning',
>       'myAge': 18,
>       'myHometown': ['HuNan', 'HUaiHua']
>   }
>   print(me);
>   //{lastName: ning, myAge: 18, myHometown: ['HuNan', 'HUaiHua']}
>   print(me['myAge']);//18
>   ```
>
> * 定义方式二：
>
>   ```dart
>   var me = new Map();
>   me['lastName'] = 'ning';
>   me['age'] = 18;
>   me['myHometown'] = ['HuNan', 'HUaiHua'];
>   ```

> **`Maps`中常用的属性与方法**
>
> | 常用属性     | 描述            |
> | ------------ | --------------- |
> | `keys`       | 获取所有key值   |
> | `values`     | 获取所有value值 |
> | `isEmpty`    | 判断是否为空    |
> | `isNotEmpty` | 判断是否不为空  |
>
> ```dart
> var me = {
>        'lastName': 'ning',
>        'myAge': 18
> }
> 
> print(me.keys);
> //(lastName, myAge)
> print(me.keys.toList);
> //[lastName, myAge]
> 
> print(me.values);
> //(ning, 18)
> print(me.values.toList);
> //[ning, 18]
> ```
>
> | 常用方法        | 描述                                   |
> | --------------- | -------------------------------------- |
> | `remove(key)`   | 删除指定key值的数据                    |
> | `addAll({...})` | 合并映射，给映射添加属性               |
> | `containsValue` | 查看映射内是否存在某值，返回true/false |
>
> ```dart
> var me = {
>    	'lastName': 'ning',
>    	'myAge': 18,
>    	'myHometown': ['HuNan', 'HUaiHua']
> }
> 
> me.remove('myHometown');
> print(me);
> //{lastName: ning, myAge: 18}
> 
> print(me.containsValue(18));
> //true
> ```

> **`List`、`Set`与`Maps`通用的常见方法**
>
> | 常用方法 | 描述                                     |
> | -------- | ---------------------------------------- |
> | forEach  | 遍历`List`中的每个值                     |
> | map      | 遍历`List`中的每个值并进行相同的修改     |
> | where    | 把数组中满足条件的数据返回为一个新的数组 |
> | any      | 判断有无满足条件的数据，返回true/false   |
> | every    |                                          |
>
> ```dart
> //List
> List myList=[1, 2, 3]
> 
> myList.forEach(value){
>    	print('$value');
> }//[1, 2, 3]
> /*
> for(var i=0; i<myList.length; i++){
> 	print(myList[i]);
> }
> */
> /*
> for(var item in myList){
>    	print(item);
> }
> */
> //以上三个遍历数组的方法等效
> 
> var newList1=myList.map((value){
> 	return value*2;
> });
> print(newList1.toList());
> //[2, 4, 6]
> 
> var newList2=myList.where((value){
>    	return value>3;
> });
> print(newList.toList());
> //[4, 6]
> 
> var f1=myList.any((value){
>        return value>5;
> });//true
> //数组中存在符合条件的就返回true
> 
> var f2=myList.every((value){
>        return value>5;
> });//false
> //数组中每个都符合条件的才返回true
> 
> //Set与Maps类似
> //Set
> var s=new Set();
> 
> s.addAll([111, 222, 333]);
> s.forEach((value)=>print(value));
> /*
> 111
> 222
> 333
> */
> //一行代码可以使用箭头函数，注意里面print没有分号
> 
> //Maps
> Map me = {
>    	'lastName': 'ning',
>    	'myAge': 18
> }
> 
> me.forEach((key, value){
>    	print('$key: $value');
> })
> ```
>
> 

##### 变量类型判断

> ```dart
> var str=  '123';
> if(str is String){
>    	print('String');
> }else if(str is int){
>    	print('int');
> }else{
>    	print('other');
> }//String
> ```

##### 变量类型转换

> **`Number`与`String`**
>
> =>：`parse()`
>
> ```dart
> try{
> 	String str1='123';
> 	String str2='123.1';
> 	var myNum1 = int.parse(str1);
> 	var myNum2 = double.parse(str2);
> 	print(myNum1 is int);//true
> 	print(myNum is double);//true
> 	//可以都用double
> }catch(err){
>    	print(0);
> }//try catch防止服务器报错
> ```
>
> <=：`toString()`
>
> ```dart
> var myNum=12;
> var str=myNum.toString();
> print(str is String);//true
> ```

> **Booleans类型与其他类型的转换**
>
> `isEmpty//判断字符串是否为空`
>
> ```dart
> var str='xxx';
> 
> if(str.isEmpty){
>  	print('空')；
> }else{
>  	print('不为空')；
> }//不为空
> ```
>
> `isNaN//判断数值变量是否为NaN`
>
> ```dart
> var myNum=0/0;
> 
> if(myNum.isNaN){
>  	print('NaN')；
> }else{
>  	print(myNum)；
> }//NaN
> ```
>



#### 操作符

##### 算数运算符

> ```dart
> + //加
> - //减（或负号）
>   //注意++a，a++，--a，a--
> * //乘
> / //除（返回`double`结果）
> ~/ //取整（除法返回`int`结果）
> % //求余
> ```

##### 关系运算符

> ```dart
> == //判等
> != //不相等
>    //判断两个对象是否完全相同应使用identical()函数
> < //小于
> > //大于
> <= //小于等于
> >= //大于等于
> ```
>
> `x====y`工作原理：
>
> 1. 如果x或y为`null`，则都为`null`时返回true，如果仅返回false则有一个是`null`
> 2. 返回在x上调用参数y的结果

##### 类型运算符

> `as`类型转换（也用于指定库前缀）
>
> `is`如果对象具有指定的类型则为true
>
> `is!`如果对象没有指定的类型则为true

##### 赋值运算符

> 基础赋值运算`=`与`??=`
>
> `a ??= 1//如果a为空的话，把1赋值给a`

> 复合赋值运算符
>
> `a _op_= b`  ->  `a = a _op_ b`
>
> 上式op可能为+ - / ~/ % << >> >>> & | ^

##### 逻辑运算符

> | 逻辑运算符 | 功能                    |
> | ---------- | ----------------------- |
> | !          | 取反，将true与false反转 |
> | \|\|       | 逻辑或                  |
> | &&         | 逻辑且                  |

##### 按位、移位运算符

> &按位且
>
> |按位或
>
> ^按位异或
>
> ~一元位补码（1变为0；0变为1）
>
> <<左移 >>右移 >>>无符号的右移

> 大或负操作数的按位操作行为可能因平台而异

##### 条件表达式

> `condition ? expression1 : expression2`
>
> 如果condition为true，则计算expression1并返回其值；否则，计算并返回expression2的值

> `expression1 ?? expression2`
>
> 如果expression1不为空，则返回其值；否则，计算并返回expression2的值

##### 级联表示法

> ```dart
> class Person{
> 	String name;
> 	int age;
> 	Person(this.name, this.age);
> 	void printInfo(){
>  	print('${this.name}: ${this.age}');
> 	}
> }
> 
> void main(){
>  Person p=new Person('ning', 18);
>  p.printInfo();
>  p..name='hao'
>   ..age=19
>   ..printInfo();
> }//hao: 18
> /*相当于
> p.name='hao';
> p.age=19;
> p.printInfo();*/
> ```
>
> 连缀表示



#### 常见关键字

##### 输出函数`print();`

##### 条件判断语句

> ```dart
> if(){ 
>     
> }else if(){
> 	
> }else{
> 
> }//可用三目运算符代替
> //条件?A: B true则A false则B
> ```
>
> ```dart
> switch(){
> case'':
> 	break;
> default:
> 	break;
> }
> ```

##### 循环语句

> ```dart
> for(int i=0; i<10; i++){
> 	print(i);
> }//0123456789
> ```
>
> ```dart
> var list=[
> {
> 	'case1': 111,
> 	'case2': 222,
> 	'case3': 333
> }, 
> {
> 	'case1': 444
> }
> ];
> for(var i=0; i<list.length; i++){
> 	for(var j=1; j<=list[i].length; j++){
> 		print(list[i]['case$j']);
> 	}
> }/*111
> 222
> 333
> 444
> */
> ```
>
> ```dart
> while(){
>     
> }//容易造成死循环
> do(){
>     
> }while();//先执行一次
> ```
>
> `break`/`continue`与C语言相同，结束这层循环/这次循环

##### `required`关键字

> 可以根据需要标记任何命名参数、函数或类，使得它们不为空
>
> 表示必须传入的参数

##### `assert`断言

> 如果表达式的求值结果不满足需要，则打断代码的执行
>
> ```dart
> assert(string != null);
> assert(number < 80);
> assert(urlString.startsWith('https'));
> ```
>
> 断言只有在检查模式下运行有效，在生产模式下是不会运行的

> 抛出异常：`throw`关键字用于显式引发异常
>
> 应该处理引发的异常，以防止程序突然退出
>
> 语法格式：`throw new Exception_name()`
>
>     void test_age(int age) {
>     	if(age<0) {
>     		throw new FormatException();
>     	}
>     }
>     void main() {
>     	try {
>     		test_age(-2);
>     	}
>     	catch(e) {
>     		print('Age cannot be negative'); 
>     	}
>     	// 执行结果:
>     	//Age cannot be negative
>     }
>
> 捕获异常：
>
> 1. `try`、`on`、`catch`块
>    `try`块嵌入可能导致异常的代码
>
>    要指定异常类型时使用`on`块，当处理程序需要异常对象时使用`catch`块
>    `try`块必须紧跟一个`on`/`catch`块或一个`finally`块（或两者之一)
>
>    当`try`块中发生异常时，控制将转移到`catch`
>    处理异常的语法如下:
>
>    ```dart
>    try { 
>       // code that might throw an exception 
>    }  
>    on Exception1 { 
>       // code for handling exception 
>    }  
>    catch Exception2 { 
>       // code for handling exception 
>    }
>    ```
>
>    > [!tip]
>    >
>    > 1. 代码段可以有多个`on`/`catch`块来处理多个异常
>    > 2. `on`块和`catch`块是相互包含的，即`try`块可以与`on`块和`catch`块相关联
>
>    使用`on`块实例：
>
>    ```dart
>    void main()
>    { 
>    	int x = 12; 
>    	int y = 0; 
>    	int res;  
>      try {
>    		res = x ~/ y; 
>    	}
>    	on IntegerDivisionByZeroException {
>    		print('Cannot divide by zero'); 
>    	}
>    	// 直径结果:
>    	// Cannot divide by zero
>    }
>    ```
>
>    使用`catch`块实例：  
>
>    ```dart
>    void main() { 
>    	int x = 12; 
>    	int y = 0; 
>    	int res;
>    	try {
>    		res = x ~/ y; 
>    	}
>    	catch(e){
>    		print(e);
>    	}
>    	// 直径结果:
>    	// IntegerDivisionByZeroException
>    }
>    ```
>
>    `on...catch`块实例：  
>
>    ```dart
>    void main() { 
>    	int x = 12; 
>    	int y = 0; 
>    	int res;
>      try {
>    		res = x ~/ y; 
>    	}
>    	on IntegerDivisionByZeroException catch(e)
>    	{
>    		print(e);
>    	}
>    	// 直径结果:
>    	// IntegerDivisionByZeroException
>    }
>    ```
>
> 2. `finally`块
>    `finally`块包括应该执行的代码，而不管异常的发生
>
>    `try`/`on`/`catch`之后无条件执行可选的`finally`块
>
>    使用`finally`块的语法如下：
>
>    ```dart
>    try { 
>       // code that might throw an exception 
>    }  
>    on Exception1 { 
>       // code for handling exception 
>    }  
>    catch Exception2 { 
>       // code for handling exception 
>    }
>    finally { 
>       // code that should always execute; irrespective of the exception 
>    }
>    ```
>
>    `finally`块实例：
>
>    ```dart
>    void main() { 
>    	int x = 12; 
>    	int y = 0; 
>    	int res;  
>    	try {
>    		res = x ~/ y; 
>    	}
>    	on IntegerDivisionByZeroException {
>    		print('Cannot divide by zero');
>    	}
>    	finally {
>    		print('Finally block executed');
>    	}
>    	// 直径结果:
>    	// Cannot divide by zero
>    	// Finally block executed
>    }
>    ```
>
>    **`rethrow`块**
>
>    可以使用`rethrow`关键字，重新抛出异常，如：
>
>    ```dart
>    void misbehave() {
>    	try {
>    		dynamic foo = true;
>    		print(foo++); 		// Runtime error
>    	}
>    	catch (e) {
>    		print('misbehave() partially handled ${e.runtimeType}.');
>    		rethrow; 			// Allow callers to see the exception.
>    	}
>    }
>                   
>    void main() {
>    	try {
>    		// 虽然 catch 了异常，但是又 rethrow 了，所以要捕获
>    		misbehave();
>    	}
>    	catch (e) {
>    		print('main() finished handling ${e.runtimeType}.');
>    	}
>    // 执行结果;
>    // misbehave() partially handled NoSuchMethodError.
>    // main() finished handling NoSuchMethodError.
>    }
>    ```
>
>    **自定义异常**
>
>    `Dart`中的每个异常类型都是内置类`Exception`的子类
>
>    `Dart`可以通过扩展现有异常来创建自定义异常
>
>    定义自定义异常的语法:
>
>    ```dart
>    class Custom_exception_Name implements Exception
>    { 
>       // can contain constructors, variables and methods 
>    }
>                   
>    class AmtException implements Exception {
>    	String errMsg() => 'Amount should be greater than zero';
>    }
>                   
>    void withdraw_amt(int amt) {
>    	if (amt <= 0) {
>    		throw new AmtException();
>    	}
>    }
>                   
>    void main() {
>    	try {
>    		withdraw_amt(-1);
>    	}
>    	catch(e) {
>    		print(e.errMsg());
>    	}
>    	finally {
>    		print('Ending requested operation.....');
>    	}
>    	// 执行结果: 
>    	// Amount should be greater than zero
>    	// Ending requested operation.....
>    }              
>    ```

##### `identical`函数

> 用法：
>
> ```dart
> bool identical(
> 	Object? a,
>     	Object? b
> )
> ```
>
> 检查两个引用是否指向同一个对象，两个实例是否共用一个存储空间
>
> ```dart
> void main(){
>     var o1=new Object();
>     var o2-new Object();
>     
>     print(identical(o1, o1));
>     print(identical(o1, o2));
> }/*true
> false*/
> ```

> 可以利用`identical`函数发现：`const`关键字在多个地方创建相同的对象时，内存只保留一个对象，共享存储空间
>
> 即：`const`关键字创建的相同对象是共用存储空间的

##### 常量构造函数

> 关键字`const`修饰
>
> 用于成员变量都是`final`的类
>
> 实例化时如果不加`const`修饰，即使调用常量构造函数，实例化的对象也不是常量实例
>
> 实例化常量构造函数时，多个地方创建这个对象，如果传入的值相同，只会保留一个对象
>
> `Flutter`中`const`修饰不仅仅节省了组件构件式的内存开销，还有在重新构建组件时不再重新构建`const`组件，从而节省了内存
>
> ```dart
> class Container{
>     int width;
>     int height;
>     Container({required this.width, required this.heigth});
> }
> 
> void main(){
>     var c1=new Container(width:100, heigth:100);
>     var c2=new Container(width:100, heigth:100);
>     print(identical(c1, c2));
> }//false
> ```
>
> ```dart
> class Container{
>     final int width;
>     final int height;
>     const Container({required this.width, required this.heigth});
> }
> 
> void main(){
>     var c1=Container(width:100, heigth:100);
>     var c2=Container(width:100, heigth:100);
>     print(identical(c1, c2));
>     
>     var c3=const Container(width:100, heigth:100);
>     var c4=const Container(width:100, heigth:100);
>     print(identical(c3, c4));
>     
>     var c5=const Container(width:100, heigth:100);
>     var c6=const Container(width:100, heigth:101);
>     print(identical(c5, c6));
> }/*false
> true
> false*/
> ```



#### 函数/方法

> 自定义方法的基本格式：
>
> 返回类型 方法名称（参数1, 参数2, ..., [可选参数1, 可选参数2, ...], {命名参数1, 命名参数2, ...}）{
>
> ​	方法体
>
> ​	return 返回值;
>
> }
>
> ```dart
> void printInfo(){
>        print('自定义方法')；
> }
> 
> void main(){
>        printInfo();
>     
>    	int getNum(){
>        	var myNum=123;
>       		return myNum;
>    	}
>    	print(getNum());
> }//自定义方法
> //123
> ```
>
> 定义在main函数外：全局作用域，在整个程序中都可以使用
>
> 定义在某个函数体内：局部作用域，只能在该函数体内调用

> 可选参数与无默认赋值时，应时用if判断可选参数是否为空
>
> 有默认赋值的可选参数称为默认参数
>

##### 命名参数

> 定义函数时{}内的参数为命名参数
>
> 命名参数在引用时应使用 `key: value` 的格式
>
> ```dart
> String printUserInfo(String userName, {int age, String gender='man'}){
>    	if(age!=null){
>            return 'Name:$userName---Gender:$gender---Age:$age';
>    	}else{
>    		return 'Name:$userName---Gender:$gender---Age:NotFound';
>    	}
> }
> 
> void main(){
>    	print(printUserInfo('ning', age:18, gender:));
> }
> //Name:ning---Gender:man---Age:18
> ```
>
> 命名参数提高了代码的可读性

##### 方法作为参数

> ```dart
> fn1(){
>        print('fn1');
> }
> fn2(fn){
>    	fn();
> }
> 
> void main(){
>    	fn2(fn1);
> }
> //fn1
> ```

##### 箭头函数=>

> 在函数中只有单句代码时可以使用箭头函数
>
> ```dart
> List list=[1, 2, 3, 4];
> 
> var newList=list.map((value)=>value>2?value*2:value);
> /*等同于
> var newList=list.map((value){
>    	if(value>2){
>        	return value*2;
>    	}
>    	return value;
> });
> */
> 
> void main(){
>    	print(newList.toList());
> }
> //[1, 2, 6, 8]
> ```

##### 函数的相互调用

> ```dart
> bool isEvenNumber(int n){
>    	if(n%2==0){
>        	return true;
>    	}
>    	return false;
> }
> 
> printNum(int n){
>    	for(var i=1; i<=n; i++){
>        	if(isEvenNumber(i)){
>            	print(i);
>        	}
>    	}
> }
> 
> void main(){
>    	print(10);
> }
> /*2
> 4
> 6
> 8
> 10*/
> ```

##### 匿名方法

> 如上这条代码中的fn函数就是一个匿名函数
>
> ```dart
> fn1(){
>    	print('fn1');
> }
> fn2(fn){
>    	fn();
> }
> 
> void main(){
>    	fn2(fn1);
> }
> //fn1
> ```
>
> 或者我们也可以直接定义一个匿名函数
>
> ```dart
> var printNum=(){
>    	print(123);
> };
> 
> printNum();
> //123
> ```
>
> 函数本身没有名字，但是赋值给了一个函数变量

##### 自执行方法

> `((){函数体})();`
>
> ```dart
> int n=123;
> 
> ((int n){
>    	print(n);
>    	print('自执行函数');
> })();
> //123
> //自执行函数
> ```

##### 递归方法

> 函数中调用自身，要指定结束条件
>
> ```dart
> var sum=1;
> fn(n){
>    	sum*=n;
>        if(n==1){
>        	return sum;
>    	}
>    	fn(n-1);
> }
> 
> fn(5);
> print(sum);
> //120
> ```

##### 闭包

> 全局变量：常驻内存，污染全局
>
> 局部变量：不常驻内存，不会污染全局

> 想要实现：常驻内存，不污染全局
>
> 闭包：函数嵌套函数，内部函数调用外部函数的变量或参数，变量或参数不会被系统回收
>
> 写法：函数嵌套函数，return里面的函数
>
> ```dart
> fn(){
>    	var a=123;
>    	return(){
>        	a++;
>        	print(a);
>    	};
> }
> 
> void main(){
>    	var b=fn();
>    	b();
>    	b();
>    	b();
> }
> /*124
> 125
> 126*/
> ```
>



#### 类

> Dart语言是面向对象的编程
>
> 面向对象编程（OOP）的三个基本特征：封装、继承、多态
>
> * 封装：对象和类概念的主要特性。把客观事物封装成抽象的类，并把自己的部分属性和方法提供给其他对象
> * 继承：可以使得子类具有父类的属性和方法，还可以在子类中重新定义，以及追加属性和方法
> * 多态：允许将子类类型的指针赋值给父类类型，同一个函数调用会有不同的执行结果
>
> Dart中所有的东西都是对象，所有的对象都继承自Object类
>
> Dart是一门使用类和单继承的面向对象语言，所有对象都是类的实例，并且所有类都是Object的子类
>
> 一个类常由属性和方法组成

> `int`、`double`、`String`、`List`、`Map`等都是类

##### 自定义类

> 方法：必须在main函数外，类名称首字母、每一个单词的首字母必须大写（与方法不同，不是驼峰式命名法）
>
> ```dart
> class Person{
>    	String name='ning';
>    	int age=18;
>     	//类的属性
>     
>    	void getInfo(){
>    		print('${this.name}: ${this.age}');
>        	//以上为推荐写法，与下方等效
>        	//print('$name: $age');
>    	}
>    	//类的方法
>     
>    	void setInfo(int age){
>        	this.age = age;
>    	}
> }
> 
> void main(){
>    	var p1=new Person();
>    	print(p1.name);
>     	//ning
>    	p1.getInfo();
>     	//ning: 18
>     	//实例化
>     
>     	p1.setInfo(19);
>     	p1.getInfo();
>     	//ning: 19
> }
> ```

##### 构造函数

> 实例化类过程中自动触发的方法

> **默认构造函数**
>
> 名称与类名称相同，只能有一个
>
> ```dart
> class Person{
>    	String name='ning';
>     	int age=18;
>     
>     	Person(){
>            print('实例化时自动触发');
>    	}//默认构造函数
>     
>    void printInfo(){
>    	print('${this.name}: ${this.age}');
>    	}
> }
> 
> void main(){
>    	Person p1=new Person();
>    	//实例化时自动触发
>    	p1.printInfo();
>    	//ning: 18
> }
> ```
>
> ```dart
> class Person{
>    	String name;
>    	int age;
>     
>    	Person(String name, int age){
>    		this.name = name;
>        	this.age = age;
>    	}
>     
>    	void printInfo(){
>    		print('${this.name}: ${this.age}');
>    	}
> }
> 
> void main(){
>    	Person p1=new Person('ning', 18);
>    	p1.printInfo();
>     	//ning: 18
>     
>    	Person p2=new Person('hao', 19);
>    	p2.printInfo();
>     	//hao: 19
> }//在类外传入信息
> ```
>
> ```dart
> class Person{
>    	String name;
>    	int age;
>     
>    	Person(this.name, this.age);
>    	//默认构造函数的简写
>     
>    	void printInfo(){
>        	print('${this.name}: ${this.age}');
>    	}
> }
> 
> void main(){
>    	Person p1=new Person('ning', 18);
>    	p1.printInfo();
>    	//ning: 18
>     
>    	Person p2=new Person('hao', 19);
>    	p2.printInfo();
>    	//hao: 19
> }
> ```

> **命名构造函数**
>
> 可以有多个
>
> ```dart
> class Person{
>    	String name;
>    	int age;
>     
>    	Person(this.name, this.age);
>     
>    	Persom.now(){
>        	print('命名构造函数')；
>    	}
>     
>    	void printInfo(){
>    		print('${this.name}: ${this.age}');
>    	}
> }
> 
> void main(){
>    	Person p1=new Person.now();
>    	//调用命名构造函数
> }
> ```

> 类可以**抽离成一个单独的dart文件**
>
> 新建lib文件夹存放类
>
> 用import关键字引入`import 'lib/Person.dart';`

> Dart语言的**私有属性**、**私有方法**
>
> 其他语言中有公有public、私有private、保护protected
>
> 在名称前加下划线_把一个属性或方法定义为私有
>
> 必须将其抽离到单独的文件中才能生效
>
> ```dart
> import 'lib/Person.dart';
> void main(){
>    	Person p1=new Person('ning', 18);
>    	print(p1._name);
> }
> ```
>
> ```dart
> class Person{
>    	String _name;
>    	int age;
>     
>    	Person(this._name, this.age);
> }//Person.dart
> ```
>
> 此时_name属性无法再被访问
>
> 但是可以通过公有的命名构造方法来间接地访问_name属性
>
> ```dart
> import 'lib/Person.dart';
> void main(){
>    	Person p1=new Person('ning', 18);
>    	print(p1.getName());
> }
> ```
>
> ```dart
> class Person{
>    	String _name;
>    	int age;
>     
>    	Person(this._name, this.age);
>     
>    	String getName(){
>        	return this.name;
>     	}
> }//Person.dart
> ```
>
> 私有方法：只有在当前类才能访问，外部无法直接访问
>
> 亦可以通过公有的命名构造方法来间接地访问
>
> ```dart
> import 'lib/Person.dart';
> void main(){
>    	Person p1=new Person('ning', 18);
>    	p1.execRun();
> }
> ```
>
> ```dart
> class Person{
>    	String _name;
>    	int age;
>     
>    	Person(this._name, this.age);
>     
>    	void _run(){
>        	print('这是一个私有方法')；
>    	}
>     
>    	execRun(){
>        	this._run();//类里面方法的相互调用
>    	}
> }//Person.dart
> ```

##### `getter`与`setter`修饰符

> ```dart
>//计算类Rect的面积
> class Rect{
> 	num height;
>    	num width;
>    	Rect(this.height, this.width);
>    
>     	area(){
>        	return this.height*this.width;
>    	}
>    }
> 
> void main(){
> 	Rect r=new Rect(10, 4);
>    	print('Area: ${r.area()}');
>    }//Area: 40
> //用方法来访问area
> ```
> 
>`getter`计算属性
> 
>```dart
> class Rect{
> 	num height;
>    	num width;
>    	Rect(this.height, this.width);
>    
>     	get area{
>        	return this.height*this.width;
>    	}
>    }
> 
> void main(){
> 	Rect r=new Rect(10, 4);
>    	print('Area: ${r.area}');
>    }//Area: 40
> //调用直接通过访问属性的方法访问area
> ```
> 
>`setter`
> 
>```dart
> class Rect{
> 	num height;
>    	num width;
>    	Rect(this.height, this.width);
>    
>     	area(){
>        	return this.height*this.width;
>    	}
>    	set areaHeight(value){
>        	this.height=value;
>    	}
>    }
> 
> void main(){
> 	Rect r=new Rect(10, 4);
>    	r.areaHeight=6;
>     	print(r.area());
>    }//24
> ```
> 
>```dart
> class Rect{
> 	num height;
>    	num width;
>    	Rect(this.height, this.width);
>    
>     	get area{
>        	return this.height*this.width;
>    	}
>    	set areaHeight(value){
>        	this.height=value;
>    	}
>    }
> 
> void main(){
> 	Rect r=new Rect(10, 4);
>    	r.areaHeight=6;
>    	print(r.area);
>    }//24
> ```

> **类的初始化列表**
>
> 可以在构造函数体运行前初始化实例变量
>
> ```dart
> class Rect{
>        num height;
>        num width;
>        Rect(): height=2,width=10{
>            print('${this.height},${this.width}');
>        }
>        getArea(){
>            return this.height*this.width;
>        }
> }
> 
> void main(){
>        Rect r=new Rect();
>        print(r.getArea());
> }//2, 10
> //20
> ```



#### 静态成员

> `static`关键字定义类级别的静态变量和函数
>
> 静态方法不能访问非静态成员，非静态方法可以访问静态成员
>
> ```dart
> class Person{
>     static String name='ning';
>     static void show(){
>     	print(name);
> 	}
> }
> 
> void main(){
>     var p= new Person();
>     p.show();
> }//new Person()无法访问
> ```
>
> ```dart
> class Person{
> 	static String name='ning';
> 	static void show(){
>     	print(name);
> 	}
> }
> void main(){
> 	print(Person.name);
>     Person.show();
> }/*ning
> ning*/
> ```
>
> ```dart
> class Person{
> 	static String name='ning';
> 	int age=18;
> 
> 	static void show(){
>     	print(name);
> 	}
>     
> 	void printInfo(){
>         print(name);//访问静态属性
>         print(this.age);//访问非静态属性
>         show();//访问静态方法
>     }//非静态方法可以访问静态成员以及非静态成员
> }
> 
> void main(){
>     Person p=new Person();
>     p.printInfo();
> }/*ning
> 18
> ning*/
> ```
>
> ```dart
> class Person{
> 	static String name='ning';
> 	int age=18;
> 
> 	static void show(){
>     	print(name);
> 	}
> 
>     static void printUserInfo(){
>         print(name);//静态属性
>         print(age);//非静态属性，无法访问，报错
>         show();//静态方法
>     }//静态方法不能访问非静态成员
> }
> 
> void main(){
>     Person.printUserInfo();
> }/*ning
> ning*/
> ```

##### 对象操作符

> | 操作符 | 描述             |
> | ------ | ---------------- |
> | ?      | 条件运算符       |
> | as     | 类型转换         |
> | is     | 类型判断         |
> | ..     | 级联操作（连缀） |
>
> ```dart
> class Person{
> 	String name;
> 	int age;
> 	Person(this.name, this.age);
> 	void printInfo(){
>     	print('${this.name}: ${this.age}');
> 	}
> }
> 
> void main(){
>     Person p;
>     p?.printInfo();
> }//p为空，无?会报错，加上后输出为空，不再报错
> //更新之后貌似还是会报错（？
> ```
>
> ```dart
> class Person{
> 	String name;
> 	int age;
> 	Person(this.name, this.age);
> 	void printInfo(){
>     	print('${this.name}: ${this.age}');
> 	}
> }
> 
> void main(){
>     var p1;
>     p1='';//此时p1为String
>     p1=new Person('ning', 18);//此处p1为Person对象，老版本中会报错
>     (p1 as Person).printInfo();
> }//ning: 18
> ```
>
> ```dart
> class Person{
> 	String name;
> 	int age;
> 	Person(this.name, this.age);
> 	void printInfo(){
>     	print('${this.name}: ${this.age}');
> 	}
> }
> 
> void main(){
>     Person p=new Person('ning', 18);
>     if(p is Object){
>         p.name='hao';
>     }
>     p.printInfo();
> }//hao: 18
> ```
>
> ```dart
> class Person{
> 	String name;
> 	int age;
> 	Person(this.name, this.age);
> 	void printInfo(){
>     	print('${this.name}: ${this.age}');
> 	}
> }
> 
> void main(){
>     Person p=new Person('ning', 18);
>     p.printInfo();
>     p..name='hao'
>      ..age=19
>      ..printInfo();
> }//hao: 18
> /*相当于
> p.name='hao';
> p.age=19;
> p.printInfo();*/
> ```

##### 类的继承

> * 子类使用**`extend`关键字**来继承父类
> * 子类会继承父类中可见（公有）的属性和方法，但是不会继承构造函数
> * 子类能复写父类的方法（通过`getter`、`setter`关键字）
>
> ```dart
> class Person{
> 	String name='ning';
> 	num age=18;
> 	void printInfo(){
>     	print('${this.name}: ${this.age}');
> 	}
> }
> 
> class Web extends Person{
>     
> }
> 
> void main(){
>     Web w=new Web();
>     print(w.name);
>     w.printInfo();
> }//ning
> //ning: 18
> ```

> **`super`关键字**
>
> **默认构造函数传参**
>
> ```dart
> class Person{
> 	String name;
> 	num age;
> 	Person(this.name, this.age);
> 	//构造函数无法被extend继承
> 	void printInfo(){
>  	print('${this.name}: ${this.age}');
> 	}
> }
> 
> class Web extends Person{
> 	String gender;
> 	Web(String name, num age): super(name, age);//super关键字把Person类中传入的参数赋值给Web类中对应的属性
> 	this.gender=gender;
> 	run(){
>     	print('${this.name}: ${this.age}: ${this.gender}');
> 	}
> }//子类可以有自己的属性与方法
> 
> void main(){
> 	Web w=new Web('ning', 18, 'male');
> 	w.run();
> }//ning: 18: male
> ```
>
> **命名构造函数传参**
>
> ```dart
> class Person{
> 	String name;
> 	num age;
>     Person(this.name, this.age);
>     Person.xxx(this.name, this.age);
> 	void printInfo(){
>  		print('${this.name}: ${this.age}');
> 	}
> }
> 
> class Web extends Person{
> 	String gender;
> 	Web(String name, num age): super.xxx(name, age);
> 	this.gender=gender;
> 	run(){
>     	print('${this.name}: ${this.age}: ${this.gender}');
> 	}
> }
> 
> void main(){
> 	Web w=new Web('ning', 18, 'male');
> 	w.run();
> }//ning: 18: male
> ```

> **覆写父类的方法**
>
> 覆写前建议加上注解关键字@override
>
> ```dart
> class Person{
> 	String name;
> 	num age;
>     Person(this.name, this.age);
> 	void printInfo(){
>  		print('${this.name}: ${this.age}');
> 	}
> }
> 
> class Web extends Person{
> 	Web(String name, num age): super(name, age);
>     
>     @override
> 	void printInfo(){
>     	print('姓名${this.name}: 年龄${this.age}');
> 	}//复写父类的printInfo方法
> }
> 
> void main(){
> 	Web w=new Web('ning', 18);
> 	w.printInfo();
> }//姓名ning: 年龄18
> ```



#### 抽象类

> 主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口

> * 通过abstract关键字来定义
>
> * 抽象方法不可以用abstract关键字来声明，Dart语言中没有方法体的方法称为抽象方法
>
> * 子类继承抽象类必须得实现里面的抽象方法
> * 如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法
> * 不能被实例化，但是继承它的子类可以

> **对抽象类`extends`和`implements`的区别**
>
> * 复用抽象类里面的方法并且要用抽象方法约束子类时，要用`extends`关键字继承抽象类
> * 只是把抽象类当做标准的话，就用`implements`实现抽象类
>
> ```dart
> //定义一个Animal类，要求其子类必须有eat方法
> abstract class Animal{
>     eat();//抽象方法
>     sound();//抽象方法
>     void printInfo(){
>         print('抽象类里的普通方法')
>     }
> }
> 
> class dog extends Animal{
>     @override
>     eat(){
>         print('bone');
>     }//子类中必须覆写实现抽象方法
>     
>     @override
>     sound(){
>         print('wang');
>     }
> }
> 
> class Cat extend Animal{
>     @override
>     eat(){
>         print('fish')
>     }
>     
>     @override
>     sound(){
>         print('meow');
>     }
> }
> 
> void main(){
>     Dog d=new Dog();
>     d.eat();//bone
>     
>     Cat c=new Cat();
>     c.sound();//meow
>     c.printInfo();//抽象类里面的普通方法
> }
> //var a=new Animal();会报错，因为Animal是抽象类不可以实例化
> ```



#### 多态

> 允许将子类类型的指针赋给父类类型的指针，同一个函数调用会有不同的表现
>
> 把子类的实例赋值给父类的引用
>
> 理解：多态就是父类定义一个方法不去实现，让继承它的子类去实现，不同子类就会有不同的表现

> 如上述代码中父类`Animal`定义的`eat`和`sound`方法没有实现，在子类`dog`和`cat`中调用会有不同的表现

#### 接口

> 与`java`的区别：
>
> * 没有`interface`关键字定义接口，而是普通类或抽象类都可以作为接口被实现，同样使用`implements`关键字进行实现
> * 但是在Dart中如果接口实现的类是普通类，会将普通类和抽象类中的属性和方法全部需要覆写一遍
> * 而因为抽象类可以定义抽象方法，普通类不可以，因此建议用抽象类定义接口
>
> ```dart
> //定义一个DB库，支持mysql、mssql、mongodb类
> //mysql、mssql、mongodb类中具有同样的方法
> 
> abstract class Db{
>     String uri;//数据库链接地址
>     add(String data);//添加数据
>     save();//保存数据
>     delete();//删除数据
> }//接口，接口就是约定、规范
> //Db.dart
> ```
>
> ```dart
> import 'Db.dart';
> 
> class Mysql implements Db{
>     @override
>     String uri;
>     
>     Mysql(this.url);
>     
>     @override
>     add(String data){
>         print('Mysql add'+data);
>     }
>     
>     @override
>     save(){
>         print('Mysql save');
>     }
>     
>     @override
>     delete(){
>         print('Mysql delete');
>     }
> }//Mysql.dart
> ```
>
> ```dart
> import 'Db.dart';
> 
> class Mssql implements Db{
>     @override
>     String uri;
>     
>     @override
>     add(){
>         return null;
>     }
>     
>     @override
>     save(){
>         return null;
>     }
>     
>     @override
>     delete(){
>         return null;
>     }
> }//Mssql.dart
> ```
>
> ```dart
> import 'Db.dart';
> 
> class Mongodb implements Db{
>     @override
>     String uri;
>     
>     @override
>     add(){
>         return null;
>     }
>     
>     @override
>     save(){
>         return null;
>     }
>     
>     @override
>     delete(){
>         return null;
>     }
> }//Mongodb.dart
> ```
>
> ```dart
> import 'lib/Mysql.dart'
> 
> void main(){
>     Mysql mysql=new Mysql('...');
>     mysql.add('data1024');
> }//Mysql datadata1024
> ```

##### 一个类实现多个接口

> ```dart
> abstract class A{
>     String name;
>     printA();
> }
> 
> abstract class B{
>     printB();
> }
> 
> class C implements A{
>     @override
>     String namem='C';
>     
>     @override
>     printA(){
>         print('A');
>     }
>     
> }
> 
> void main(){
>     
>     C c=new C();
>     c.printA();
> }//A
> ```

##### `mixins`混入

> 在类中混入其他功能
>
> `Dart`中无法实现多继承
>
> 但可以使用`mixins`实现类似多继承的功能
>
> 关键字`with`
>
> `Dart2.x`中使用`mixins`的条件：
>
> * 作为`mixins`的类只能继承自`Object`，不能继承自其他类
> * 作为`mixins`的类不能有构造函数
> * 一个类可以`mixins`多个`mixins`类
> * `mixins`不是继承，也不是接口，而是一种全新的特性
>
> ```dart
> mixin A{
>     String name='this is A';
>     void printA(){
>         print('A');
>     }
> }
> 
> mixin B{
>     void printB(){
>         print('B');
>     }
> }
> 
> class C with A,B{
>     
> }
> 
> void main(){
>     var c=new C();
>     c.printA();
>     c.printB();
>     print(c.name);
> }/*A
> B
> this is A*/
> ```
>
> 在`mixins`的同时也可以使用继承
>
> `mixins`的类出现同名属性或方法时`with`关键字逗号后的会覆盖逗号前的
>
> ```dart
> class Person(){
>     String name;
>     num age;
>     Person(this.name, this.age){
>         print('${this.name}: ${this.age}');
>     }
> }
> 
> mixin A{
>     void printf(){
>         print('A');
>     }
> }
> 
> mixin B{
>     void printf(){
>         print('B');
>     }
> }
> 
> class C extends Letter with A,B{
>     C(String name, num age): super(name, age);
> }
> 
> void main(){
>     var c=new C('ning', 18);
>     c.printf();
> }/*ning: 18
> B*/
> ```

> **`mixins`的类型**
>
> 其超类的子类型
>
> 如上述代码中的`c`是`A`、`B`、`C`三个类的子类型
>
> ```dart
> print(c is A);
> print(c is B);
> print(c is C);
> /*true
> true
> true*/
> ```



#### 泛型

> 解决类、接口、方法的复用性，以及对不特定类型数据类型的支持（类型校验）

##### 泛型方法

> ```dart
> //传入String类型时返回String类型，传入int类型时返回int类型
> //方法一：多个方法
> String getData1(String value){
>     return value;
> }
> 
> int getData2(int value){
>     return value;
> }
> //代码冗余
> //方法二：不指定类型
> getData(value){
>     return value;
> }
> //放弃了类型检查
> //方法三：泛型
> T getData<T>(T value){
>     return value;
> }
> 
> void main(){
>     print(getData<String>('ning'));//不统一会报错
>     print(getData<int>(18));
> }/*ning
> 18*/
> ```

##### 泛型类

> ```dart
> //实例化List类时可以指定数据类型
> void main(){
>     List list=new List<int>.filled(1, 2);
> }
> ```
>
> ```dart
> //可以增加String类型和int类型，但是一次增加要统一
> class MyList<T>{
>     List list=<T>[];
>     void add(T value){
>         this,list.add(value);
>     }
>     List getList(){
>         return list;
>     }
> }
> 
> void main(){
>     MyList l1= MyList();
>     l1.add(1);
>     l1.add(2);
>     l1.add('3');
>     //调用时可以不指定类型，表示T可以使任意类型
>     print(l1.getList());//[1, 2, '3']
>     
>     MyList l2=MyList<int>();
>     l2.add(1);
>     l2.add(2);
>     print(l2.getList());//[1, 2]
> }
> ```

##### 泛型接口

> ```dart
> //官方举例
> //实现数据缓存的功能：文件缓存、内存缓，分别按照接口的约束实现
> //定义一个泛型接口，约束实现他的子类必须有 getByKey(key) 和 setByKey(key, value)
> //要求setByKey时value类型与实例化子类时指定的类型一致
> 
> abstract class Cathe<T>{
>     void getByKey(String key);
>     void setByKey(String key, T value);
> }
> 
> class FileCahe<T> implements Cathe{
>     @override
>     void getByKey(Strinf key){
>         return null;
>     }
>     @override
>     void setByKey(String key, T value){
>         return null;
>     }
> }
> 
> class MemoryCahe<T> implements Cathe{
>     @override
>     void getByKey(Strinf key){
>         return null;
>     }
>     @override
>     void setByKey(String key, T value){
>         return null;
>     }
> }
> 
> void main(){
>     
> }
> ```



#### 注解（元数据`metadata`）

> 用于在代码中添加用于描述代码的额外信息
>
> 可以应用于**类、方法、属性、构造函数、函数参数**等

> 语法形式：`@Annotation`
>
> 直接放在需要添加注解的代码前面，一行代码可以有多个注解，每个注解之间用逗号隔开

##### 内置注解

> | 内置注解      | 描述                                                         |
> | ------------- | ------------------------------------------------------------ |
> | `@Deprecated` | 用于创建一个具有自定义消息和过时时间的过时注解。             |
> | `@deprecated` | 表示某个API已经过时，不建议使用。在使用过时的API时，静态分析工具会给出警告。 |
> | `@override`   | 表示子类的方法覆盖了父类的方法。如果没有正确覆盖，静态分析工具会给出警告。 |

##### `meta`库中的常用注解

> | 常用注解        | 描述                                                         |
> | --------------- | ------------------------------------------------------------ |
> | `@required`     | 用于表示构造函数或方法的命名参数是必需的。这有助于确保在调用构造函数或方法时提供必需的参数。如果缺少必需的参数，Dart分析器会发出警告。 |
> | `@sealed`       | 用于表示一个类是密封的，即它只能在定义它的库中扩展。这有助于限制类的继承，确保库的内部实现不会被外部代码破坏。 |
> | `@protected`    | 用于表示一个类成员（方法、属性等）只能被其子类访问。这有助于实现封装，确保类的内部实现不会被其他类误用。 |
> | `@immutable`    | 用于标记一个 **类** 为不可变（Immutable）。不可变类是指 **其实例在创建后不能被修改的类**，所有字段都是`final` 的，且 **没有公共的可变方法**。这样的类可以提供更强的安全性和线程安全性。 |
> | `@alwaysThrows` | 表示一个函数总是抛出异常。这有助于静态分析工具了解代码的行为，以便更好地捕获潜在的错误。 |

> 注解必须是常量表达式
>
> 注解不能直接访问被注解对象的属性或方法
>
> 注解不会影响程序的执行



#### 库

> `Dart`中，库使用`import`关键字引入
>
> `library`指令可以创建一个库，但就算没有用`library`指令，每个`Dart`文件也都是一个库
>
> `Dart`中的库主要有三种：
>
> * 自定义库
>
>   ```dart
>   import 'lib/xxx.dart';
>   ```
>
> * 系统内置库
>
>   ```dart
>   import 'dart:math';
>   import 'dart:html';
>   import 'dart:io';
>   import 'dart:convert';
>   ```
>
> * 第三方Pub包中管理系统中的库
>
>   * 需要在自己项目根目新建一个`pubspec.yaml`文件
>
>   * 在`pubspec.yaml`文件中配置名称、描述、依赖等信息
>
>   * 运行`pub get`获取包下载到本地
>
>   * 项目中引入库
>
>     ```dart
>     import 'package:http/htt.dart' as http;//看文档使用
>     ```

##### 自定义库

> 上文提到可以将类拆分为单独的`Dart`文件，放在`lib`文件夹内，就是自定义库

##### 系统内置库

> `dart:math`数学库

> `dart:io`与网络有关

> `async`与`await`
>
> * `asnyc`把方法变成异步
> * `await`等待异步方法执行完成
> * 只有`asnyc`方法才能使用`await`关键字调用方法
> * 如果调用别的`asnyc`方法必须使用`await`关键字

##### Pub包管理系统中的库

> 1. 从下列网址中找到要用的库
>
>    https://pub.dev.packages
>
>    https://pub.flutter-io.cn/packages
>
>    https://pub.dartlang.org/flutter/
>
> 2. 创建`pubspec.yaml`文件
>
>    e.g.如下（不用记，看引用的库文档）
>
>    ```yaml
>    name: xxx
>    description: A new flutter module project.
>    dependencies: 
>    	http: ^0.12.0+2
>    	date_format: ^1.0.6
>    ```
>
> 3. 配置`dependencies`（一样看文档）
>
> 4. 运行`pub get`（`dart pub get`）获取远程库
>
> 5. 看文档引入库使用

##### 库的名称冲突与库的重命名

> 当引入两个库中有相同名称的标识符时会报错
>
> ```dart
> class Person{
>     String name;
>     int age;
>     Person(this.name, this.age);
>     
>     Person.setInfo(String name, int age){
>         this.name=name;
>         this.age=age;
>     }
>     
>     void printInfo(){
>         print(Person1:${this.name}: ${this.age});
>     }
> }//Person1.dart
> ```
>
> ```dart
> class Person{
>     String name;
>     int age;
>     Person(this.name, this.age);
>     
>     Person.setInfo(String name, int age){
>         this.name=name;
>         this.age=age;
>     }
>     
>     void printInfo(){
>         print(Person2:${this.name}: ${this.age});
>     }
> }//Person2.dart
> ```
>
> ```dart
> import 'lib/Person1.dart';
> import 'lib/Person2.dart' as lib;
> 
> void main(){
>     Person p1=new Person('ning', 18);
>     p1.printInfo();
>     //ning: 18
>     
>     lib.Person p2=new lib.Person('hao', 19);
>     p2.printInfo();
>     //hao: 19
> }
> ```
>
> 如此解决库的名称冲突（`as`关键字）

##### 部分导入

> * 方法一：只导入需要的部分，关键字`show`
>
>   ```dart
>   import 'package:lib1/lib1.dart' show foo;
>   ```
>
> * 方法二：隐藏不用的部分，关键字`hide`
>
>   ```dart
>   import 'package:lib2/lib2.dart' hide foo;
>   ```



#### 异步操作

> 在文件读写、数据库访问、网络请求等情况中要使用异步操作，关键字`asnyc`和`await`
>
> 当你调用一个异步函数时，它将立即返回一个 `Future` 对象。当异步操作完成时，`Future` 将被“完成”或“解析”

##### `Future`

> `Future`是`Dart`中用于表示异步操作的对象
>
> 调用一个异步函数时，会立即返回一个`Future`对象，表示这个异步操作的结果
>
> `Future`对象有三种状态：
>
> * 未完成：异步操作还没有完成
> * 完成（`resolved`）：异步操作成功完成，并返回一个值
> *  错误（`rejected`）：异步操作失败，并返回一个错误
>
> 如：
>
> ```dart
> Future<String> fetchUserOrder() {
>   // 模拟网络延迟
>   return Future.delayed(Duration(seconds: 2), () => 'Large Latte');
> }
> 
> void main() {
>   print('Fetching user order...');
>   fetchUserOrder()
>       .then((order) => print('Your order is: $order'))
>       .catchError((error) => print(error));
> }
> ```
>
> 在这个示例中，`fetchUserOrder` 是一个异步函数，它使用 `Future.delayed` 来模拟网络延迟
>
> 当调用 `fetchUserOrder` 时，立即返回一个 `Future` 对象
>
> 然后使用 `then` 和 `catchError` 来处理 `Future` 的成功和错误结果

##### `asnyc`和`await`

> ```dart
> Future<String> fetchUserOrder() {
>   return Future.delayed(Duration(seconds: 2), () => 'Large Latte');
> }
> 
> Future<void> main() async {
>   print('Fetching user order...');
>   try {
>     var order = await fetchUserOrder();
>     print('Your order is: $order');
>   } catch (error) {
>     print(error);
>   }
> }
> ```
>
> 在这个示例中，使用了 `async` 关键字来标记 `main` 函数是一个异步函数
>
> 然后使用 `await` 关键字来等待 `fetchUserOrder` 的结果
>
> 如果 `fetchUserOrder` 抛出一个错误，可以使用 `try`/`catch` 来处理这个错误
>
> > [!important]
> >
> > 只能在 `async` 函数中使用 `await` 关键字。
