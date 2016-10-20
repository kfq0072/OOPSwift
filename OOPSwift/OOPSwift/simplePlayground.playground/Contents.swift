//: Playground - noun: a place where people can play

import UIKit

/******************** 字符串 *******************/
/********************  *******************/
var string1 = NSString(format: "%@ %@","HELLO","world")
string1.lowercased
string1.uppercased
var str:String = "kfq"
str.uppercased()

var string2 = "hi, wor;ld"
var strng3:String = "he world"

//string2.components(separatedBy: CharacterSet(','))
print(string1.substring(from: 1))//从第几个截取字符串
print(string1.substring(to: 2))//从第o个截取到第2个字符串
print(string1.substring(with: NSMakeRange(2, 3)))
print(string1.hasPrefix("H"))
print(string1.range(of: "HE"))

/******************** 数字 *******************/6
let num:NSNumber = 10000001.100
num.intValue
num.floatValue
num.doubleValue
num.boolValue
num.stringValue
num.int8Value
num.int64Value



/******************** switch & for & for in & while *******************/
let conditionStr = "e"
switch conditionStr {
case "a":
    print("a")
case "c":
    print("c")
case "e":
    print("e")
default:
    print("no one")
}

for indexP in 0 ..< 3 {
    print(indexP)
}

let namesArray = ["tom","lucy","lili","peter"]
for name in namesArray {
    print(name)
}

let condition = false
while condition {
    print(condition)
}
let count = 100;
switch count {
case 1...1000:
    print("1到1000");
case 1001...2000:
    print("1001到2000");
    fallthrough //进入
case 2001...3000:
    print("2001到3000");
default:
    print("超过3000");
}

// MARK: - 数组
/******************** 数组 *******************/
var myArray0:Array = ["hello",2,3] as [Any]
myArray0.remove(at: 0)
print(myArray0)

let myArray = [1,2,"fff"] as [Any]
let swiftArray = NSArray(array: myArray)
var mutArray = NSMutableArray(array: myArray)
mutArray.removeObject(at: 1)
mutArray.removeLastObject()
var shoppingItem:[String] = ["apple","orange","bananer"];
shoppingItem.insert("yollw", at: 0);
shoppingItem.removeLast();
shoppingItem.append("hhhh");
shoppingItem.remove(at: 1);
shoppingItem.removeAll(keepingCapacity: true);
let prictArray:[String] = ["200.0","300.0"];
shoppingItem = shoppingItem + prictArray;

print("array:\(shoppingItem) count: \(shoppingItem.count) index0:\(shoppingItem[0])");
for item in shoppingItem {
    print(item);
}

let fArray:[Float] = [100.0,200.0];
let reArray = fArray + [50.0];
print(reArray);


/******************** 字典 *******************/
var myDic2 :Dictionary = ["company":"hw","address":"bantian","peoples":1000] as [String : Any]
myDic2["ccc"] = "bb"
print(myDic2)

let dic = ["name":"kfq","age":20] as [String : Any]
var dic2 = NSMutableDictionary(object: "11", forKey: "class" as NSCopying)
var dic3 = NSMutableDictionary(objects: ["name","age","sex"], forKeys: ["kfq" as NSCopying,20 as NSCopying,"m" as NSCopying])
dic.count
dic3.count
dic3["name"]="hsm"
var myDic = ["khello":"hello","kPath":"path"];
print("myDic:\(myDic)");
var kDic = myDic;//深拷贝
kDic["kPath"] = "kValue";
print("kDic:\(kDic) myDic:\(myDic)");

myDic.removeValue(forKey: "khello");
myDic["khello"] = nil;
print("myDic:\(myDic)");

for (key,value) in myDic {
    print("myDic: \(key):\(value)")
}


/******************** 集合 *******************/
let set1:NSSet = ["a","b","c"]
let set2:NSMutableSet = ["a","c","d"]
let set3:NSSet = ["q","d","e"]
set1.count
set1.allObjects
set2.add("e")
set2.contains("e")
set2.isSubset(of: set1 as Set<NSObject>)//判断set2是否是set1的子集
set2.intersects(set1 as Set<NSObject>)//判断set2是否是set1的交集
set2.union(set1 as Set<NSObject>)//union the two set

/******************** 元组 *******************/
var unitArray = (1,"aa")
print("unit is \(unitArray)")
print("unit 1 is \(unitArray.1)")
print("unit 0 is \(unitArray.0)", terminator: "")

let unitLet = unitArray;
unitLet.0
unitLet.1

let (unit1,unit2) = unitLet;
unit1;
unit2;


/******************** 可选 *******************/
var myOptional:String?
print(myOptional);
myOptional = String(111);
print(" is \(myOptional!)")//使用先要解包
if let test = myOptional {
    print(test)
}
var possibleString: String? = "An optional string"
//possibleString = nil 空不可以被解包，编译会报错
print(possibleString!)

/******************** 隐试可选! *******************/
/*
    在特定模块中可以确定某个可选变量总是有值的，这种时候可以使用隐试可选
**/
var hideOptional:String!
hideOptional = "222"
print(hideOptional);//像正常的变量直接使用
if let testHide = hideOptional {
    print(testHide, terminator: "")
}

var optionalString: String? = "Hello"
optionalString = nil
print(optionalString);

