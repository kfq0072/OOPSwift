/******************** 函数 *******************/
print("可变参数")
func sumOf(num:Int...)->(Int,Int){
    var sum = 0
    var count = 0
    for number in num {
        count += 1
        sum += number
    }
    return (sum,sum/count)
}
sumOf(num: 0)
sumOf(num: 1,2,3)
print("函数作为返回值")
func makeIncre() -> ((Int) -> Int){
    func addOne(number:Int)->Int{
        return 1 + number
    }
    return addOne
}
var incrment = makeIncre()
incrment(7)

print("函数作为参数")
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool{
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//类型别名
typealias shortInteger = Int8
var age:shortInteger?
age=100
if var myAge = age {
    myAge += 1
}

//输入输出参数(inout)
var someInt = 3
var anotherInt = 9
func swapTwoInt(a:inout Int, b:inout Int)->Void
{
    let tempInt = a
    a = b
    b = tempInt
}
swapTwoInt(a: &someInt, b:&anotherInt)
print("someInt:\(someInt) anotherInt:\(anotherInt)")

//函数类型
func addTwoInts(a:Int,b:Int)->Int
{
    return a + b
}
var myAddTwoInts:(Int, Int)->Int = addTwoInts
print("函数类型:\(myAddTwoInts(someInt,anotherInt))")

//函数类型作为参数类型
func printMathResult(mathFunc:(Int,Int)->Int,a:Int,b:Int)->Void
{
    print("result:\(mathFunc(a,b))")
}
printMathResult(mathFunc: myAddTwoInts, a: 3, b: 5)

// 函数作为返回值
func addTen(x: Int) -> ((Int) -> Int){
    func getNum(num2: Int) -> Int{
        return num2 + x
    }
    return getNum
}
var myFunc = addTen(x: 10)
print(myFunc(20))

//函数类型作为返回类型
func stepForward(input:Int)->Int{
    return input + 1
}
func stepBackward(input:Int)->Int{
    return input - 1
}
func chooseStepFunction(backwards:Bool)->(Int)->Int{
    return backwards ? stepForward : stepBackward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backwards: currentValue>0)

//嵌套函数
func myChooseStepFunction(back:Bool)->(Int)->Int
{
    func stepForward(input:Int)->Int{
        return input + 1
    }
    func stepBackward(input:Int)->Int{
        return input - 1
    }
    
    return back ? stepBackward : stepForward
}
var value = -4
let move = chooseStepFunction(backwards: value > 0)


/************** 闭包 **************/
//格式：
//{
//    (params) -> returnType in statements
//}
//传统的做法
let names = ["aa","cc","bb","ll","kk"];
func compareName (s1:String, s2:String) -> Bool {
    return s1 > s2;
}
var sortedArray = names.sorted(by: compareName)

//1. 使用闭包
sortedArray = names.sorted(
    by: {(s1:String, s2:String)->Bool in return s1>s2}
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

//6. 尾随闭包：若将闭包作为函数最后一个参数，可以省略参数标签,然后将闭包表达式写在函数调用括号后面
func testFunction(testBlock:()->Void){
    testBlock()
}
testFunction(testBlock: {
    print("正常写法")
})
//尾随闭包
testFunction(){
    print("尾随闭包")
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



