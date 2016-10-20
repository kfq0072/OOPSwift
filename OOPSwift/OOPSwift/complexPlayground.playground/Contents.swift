
//类型别名
typealias shortInteger = Int8
var age:shortInteger?
age=100
if var myAge = age {
    myAge += 1
}

/******************** 断言 *******************/
let age1:Int32?
age1 = 3
print(age1!)
assert(age1!<4,"age is more than 3")//when condition is false,the expr will print
assert(age1!>0, "your age is large 0")

//溢出运算符
//&+
//&-
//&*
//&/
//&%

/******************** struct *******************/
struct BookInfo {
    var ID:Int?
    var name:String?
}

var book1:BookInfo = BookInfo(ID: 123, name: "my love will gone on")
book1.ID = 321
var bookName = book1.name
bookName = "we are the friend"
print(book1.name!) //值传递

struct Person {
    var age:Int?
    var name:String?
}
var tom = Person(age:18,name: "hsm")
var tempAge = tom.age;
tempAge = 20
print(tom.age!)


/******************** enum&fallthrough *******************/
enum CompassPoint {
    case North
    case South
    case East
    case West
}
var myPoint = CompassPoint.North

switch myPoint {
case .North:
    print("Lots of planets have a north")
case .South:
    print("Lots of planets have a South")
case .East:
    print("Where the sun rises")
    fallthrough
case .West:
    print("Where the skies are blue")
}



/************** 闭包 **************/
//格式：
//{
//    (params) -> returnType in statements
//}
//no use closure
let names = ["aa","cc","bb","ll","kk"];
func compareName (s1:String, s2:String) -> Bool {
    return s1 > s2;
}
var sortedArray = names.sorted(by: compareName)
print(sortedArray)
//1. use closure
sortedArray = names.sorted(
    by: {(s1:String, s2:String)->Bool in return s1>s2  }
)
//2. 如果只有单行返回值，可以用以下方式写法
sortedArray = names.sorted(by: {s1,s2 in s1>s2});
print(sortedArray)
//3. 可以使用美元符号：$
sortedArray = names.sorted(by: {$0 > $1});
//4. s使用运算符
sortedArray = names.sorted(by: >)
//5. 根据上下文推断类型
//因为排序闭包函数是作为sort函数的参数进行传入，Swift可以判断其参数和返回值的类型
sortedArray = names.sorted(by: {s1,s2 in return s1>s2})
//6. 尾随闭包
//TODO::

/******************** 泛型 *******************/
func changeValue<T>( a:inout T, b:inout T) ->Void {
    let tmp = a;
    a = b;
    b = tmp;
    print("\(a) \(b)");
}
var oneA = 10;
var oneB = 20;
//changeValue(a: &oneA, b: &oneB);

var douA = 22.222;
var douB = 33.333;
changeValue(a: &douA, b: &douB)

var strA:String="hhhh"
var strB:String="bbbb"
changeValue(a: &strA, b: &strB)



