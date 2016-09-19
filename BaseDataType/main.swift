//
//  main.swift
//  BaseDataType
//
//  Created by xiuer on 16/9/12.
//  Copyright © 2016年 xiuer. All rights reserved.
//

import Foundation



print("Hello, World!")

let myContent=23
print(myContent);

var myContent2=23;
print(myContent2)

let myContent3:Float = 23.22
print(myContent3)

//1、没有初始值 编译不通过
//let  myContent ;
//var  myVarible ;


//2、在swift 中没有隐士转换 ，必须实行强制转换
myContent2=12
//myContent2=12.3(错误的)
myContent2=Int(12.3)


print(myContent3+Float(myContent2))
//3、字符串的拼接  "\" 相当于java里面的“＋” 需要拼接的用“（）”扩起来
let  myString="hellow"
let  myInt=88
var myString2 = "myString+\(myInt)+\(myString)"
let myString3="\(myString2)"
print("\(myString2)+\(myString3)")

//4、数组字典的定义
//数组
var array = ["a","b","c","d"]
var array1=[]
var dicnaray=["a":"about","b":"blank","c":"clor"]


print(array)
print(dicnaray)
dicnaray["d"]="duck"
print(dicnaray)
array[2]="f"
print(array)
    for _ in 0 ..< array.count{
    
        print("hellow")
     }

for param in array{
   print(param)
}

let  count = array.count

for  i in 0..<count{
  print(array[i])
}

for key in dicnaray{
 print(key.1)
}

//5、可以用字符做变量
let 你好="123"
print(你好);
print("hellow",separator: "2");

var  测试没有初始化的值:String="11111";
print(测试没有初始化的值)
//6、类型别名 其实就是相当于给类型起了个名字，这个名字可以映射到原类型的所有；关键字 typealias
typealias ZXInt=Int;
let myInt2:ZXInt=23
print(myInt2)
 //获取整数的最大最小值通过别名
let min=ZXInt.min
let max=ZXInt.max
print(min,max)
//7、bool类型的值，之前大家所熟悉的object——c里面的bool值为yes、no；
//在swift 中用true、false 来表达，这个跟java 一样
 let isHappy=true

if isHappy{
    print("我很开心");
}
else {
    print("我不开心")
}
// 在swift 中 条件判断必须是 逻辑表达式
let  i=0;
let  j=2;
let s = "123"


// if i{
// print("错误")
// }
if i>0{
    print("正确")
}

//8、值组（元组，复表）Tuples类型
//在swift 中新增了这样一个类型，值得组合，类型可以不一致，你可以理解为一组值（404，“not found”）可以作为函数的返回值，以及你能想到的地方

 //定义一个元组类型
 let http404Error=(404,"not found")//type :(Int,String)
 print(http404Error)// 获取所有值 结果：（404，not found）
//获取其中的某个值 默认 0，1
 print(http404Error.0);//  结果：404
 print(http404Error.1);//结果：not found
//定义一个元组类型 （带有标签）
 var http500Error = (statusCode:500,reason:"内部服务器错误")
 print(http500Error.statusCode)//结果：500
 print(http500Error.reason)//结果：内部服务器错误


 var (statusCode,reason)=http500Error
 print(statusCode,reason)//结果：500 内部服务器错误

//可以理解为一次性定义好几个类型，将它们放一块了，成为一组
let (constant0,constant1,constant2,constant3):(String,Int,Bool,Double)
constant0="constant"
constant1=1
constant2=true
constant3=12.2

//let (constant,constant1,constant2,constant3):(String,Int,Bool,Double)=("constant",1,true,12.2)

//获取一组值里面的，某个值 ;"_"表示忽略掉这个值
var constant = (constant0,constant1,constant2,constant3)
var (constant4,_,_,constant5)=constant
print(constant4,constant5)

//总结 元组适合于，数据结构简单，临时使用的一组值，它们不适用于创建复杂的数据结构，复杂的数据结构还是用class 或structrue;
//说的明白一点：元组就是定义多个数据类型，如果你有一个两个就够用，没必要使用，而如果两个值稍微有点联系，用class 太复杂，你可以考虑用这个集合


//9、optionals 　可选择的  (这里不清楚，下次再看)
let possibleNumber="123"
let convertedNumber=Int(possibleNumber)
print(possibleNumber,convertedNumber)
let number:Int?=22
print(number)
var server:String?="hellow"
print(server!)
var test:String?

print(test)
//if server!{
//print("ss")
//}
//10、断言
let k=12;
assert(k>0)
print("正常进行")
func sum(param1:Int,param2:Int) -> Int {
    print(param1,param2)
    return param2+param1
}
var swiftTest = SwiftTest()
swiftTest.width=30;
swiftTest.height=100;
sum(swiftTest.width,param2:swiftTest.height)


let  width = swiftTest.width
let height=swiftTest.height

let count2=sum(width, param2: height)
print(count2)



//11、操作符的使用
//操作符我们都学过，用过；这里说一下新的特性
//Swift 支持大部分标准 C 语言的运算符，且改进许多特性来减少常规编码错误；
//1）、赋值符（=）不返回值，以防止把想要判断相等运算符（==）的地方写成赋值符导致的错误
   var a=12;
   var b=13;
   if(a==b){
   print(true)
   }
   else{
   print(false)
   }
//2)数值运算符（+，-，*，/，%等）会检测并不允许值溢出 下面测试一下

  //UInt8  无符号的整数，占8位，能表示的大小范围（0-255）
  print("UInt8type的--->最大值=\(UInt8.max)最小值=\(UInt8.min)")

  //定义两个无符号整数： c ＝12，d＝255，两数相加－－》267用Uint8保存， 溢出11，在swift中这样会直接报错，是不允许的；
  let c:UInt8=12
  let d:UInt8 = 255
  //let mulResult:UInt8 = c+d//这样是不正确的；
  // 在object－c中，这样是可以的，
//UInt8 a=12;
//UInt8 b=255;
//UInt8 result=a+b;
//NSLog(@"%d",result);// 结果：11，保存溢出的值，但这样明显是不对的；swift 保证了这种错误不会发生
//3）在 Swift 中你可以对浮点数进行取余运算（%）
  let myFloat:Float = 12
  let result=myFloat%8
  print(result)//结果 4.0
//4)Swift 还提供了 C 语言没有的表达两数之间的值的区间运算符，用
  //（a...b和a..<b），这方便我们表达一个区间内的数值。
for i in 0...4 {
    print(i)
}
//结果 0，1，2，3，4 （0...4）(0到4包涵4)
for m in 0..<4{
   print(m)
}
//结果 0，1，2，3 （0..<4）(0到4不包涵4)



//初始化字符串
var emptyString=""
var anotherEmptyString = String()


//通过字符串的属性 isEmpty 判断字符串是否为空
if emptyString.isEmpty{
 print("Nothing to see here")
}


//可以通过var、let 关键字来区别 当前字符串是否能够修改，这个跟object－c的（NSString ,NSMutableString）不一样
var variableString = "Horse"
variableString += " and carriage"
print(variableString)
// variableString is now "Horse and carriage"

let constantString = "Highlander"
//constantString += " and another Highlander"//这样是错误的




for character in "dog!".characters{
 print(character)
}

for u in "luck!".characters{
 print(u)
}

let catCharacters:[Character] = ["c","a","t","!","🐱"]
let catString=String(catCharacters);
print(catString)



//swift 的集合 学习
//数组
//数组定义
var myArray=["hello","hellow2"]
 print(myArray)
myArray.append("123")
print(myArray)
myArray.insert("0", atIndex:0)
print(myArray)
//数组的访问
for (index,value) in myArray.enumerate(){
   print(index,value)
 }

//集合
var mySet:Set=Set<SwiftTest>()
var mySwift1=SwiftTest()
var mySwift2=SwiftTest()
var mySwift3=SwiftTest()

mySet.insert(mySwift1)
mySet.insert(mySwift2)
mySet.insert(mySwift3)
print(mySet)


//控制语句

let point=(9,0)
switch point{
case (9,0),(0,3):
    print("1")
default:
    print("not")
    
    
}


//定义一个无参数函数 参数在()内，返回值类型用->表示 函数的声明 func，sayHello为函数名
func sayHello()->String{
    return "hello"
}
//调用函数
let result2=sayHello()
print(result2)

//定义一个有参数的函数 params 外部解释，params内部使用
func greet(params params1:String,params params2:String) -> String {
    return params1+params2;
}
func greet(loc:String, externalParams locaparams:String) -> String {
    return loc+locaparams;
}
print(greet(params: "hello", params: "你好"))
print(greet("hello", externalParams: "你好"))

//函数的参数与返回值
//在swift中，函数的参数与返回值非常灵活；你既可以定义简单的函数，比如只有一个未命名的参数组成，也可以定义一个非常复杂的函数，比如，参数都命名，返回一个函数类型；

//1）无参函数 有返回值
func sayHellowWorld()->String{
  return("HellowWorld")
}
print(sayHellowWorld())
//2)无参函数 无返回值
func sayHellowWorld(){
     print("HellowWorld")
}
//3)多参数 函数，参数在()内，用逗号“，”隔开；

func greet(person:String,alreadyGreeted:Bool)->String{
    if alreadyGreeted{
     return "hellow again ,"+person
    }
     else{
     return "hello"+person
    }
}
print(greet("lia", alreadyGreeted: true))
//4)函数返回值会被忽略，当函数被调用，没有接受的变量的时候
func printAndCont(params:String)->String{
    print(params.characters.count)
    return params
}
printAndCont("函数返回值会被忽略，当函数被调用，没有接受的变量的时候")
func  printWithoutCount(params:String)  {
    let a = printAndCont(params)
    print(a)
}
printWithoutCount("函数返回值会被忽略，当函数被调用，没有接受的变量的时候")

//5)函数 多个返回值（利用元组返回 多个值）
func minMax(array:[Int])->(min:Int,max:Int){
    
    var min = array[0]
    var max = array[0]
    
    for value in  array[1..<array.count]{
        if(value<min){
         min=value
        }
        else if value>max{
         max=value
        }
       
    }
    
    return(min,max)
    
}

let minMaxR=minMax([1,5,12,44,44,-2])
print(minMaxR)


//6)函数 可变参数
//7)函数 常量参数与变量参数
//8)输入－输出参数
//9)函数类型
//10) 使用函数类型
//11)函数类型 作为参数
//12)函数类型的返回值
//13)嵌套函数

/*************************面向对象的学习*************************/























































