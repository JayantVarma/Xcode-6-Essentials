// Playground - noun: a place where people can play

import UIKit
import Foundation


var str = "Hello, playground"


var red = UIColor.redColor()
var green = UIColor.greenColor()
var blue = UIColor.blueColor()

var rect = CGRectMake(10, 10, 200, 50)
var path = UIBezierPath(ovalInRect: rect)


//MARK: - Learning Swift
// This is a comment


//MARK: - Console output printing

println("Hello World")
println("This is fine too")

var ver = 6
println("Hello from Xcode \(ver)")



//MARK: - Working with variables
var thousands = 4_693.45
var billions = 3_142_857_143
var crazyNumber = 1_23_456_7_890


//MARK: - Declaring Variables
var publisher: String
let name: String = "Learning Xcode 6"
var year: Int = 2014

//name = "Learning Visual Studio"       //Compiler complains
year = 2015

let author = "Jayant Varma"


var a=1, b=2.3, c = "Four"
var x, y, z  : Double


//MARK: - What are Int, Double and Float variables

var nextYear = year + 1                 // autocasts to Int

//var nextYearAndHalf = year + 1.5

var nextYearAndHalf =  Double(year) + 1.5



//MARK: - Adding different type

var pi = 3.14                           //autocast to Double
var e = 3                               //autocasts to Int
//var pie = pi + e                      // Error, not simmilar

var pie = pi + Double(e)                // Works as expected

var cgPie = CGFloat(pie)                // this is now of CGFloat type

var hello = "Hello"
var world = "World"
var test = hello + world

var appname = "Xcode"
var appversion = 6
//var bookname = appname + appversion     //we get an error


var bookname = appname + String(appversion)

var sBookname = "\(appname) \(appversion)"

//MARK: - Booleans

var worksOnWindows = false

if appversion > 6 {
    println("Cutting edge version")
    if worksOnWindows == true {
        println("and it works on Windows too")
    }
}


var class1 = "Math"
var class2 = "Creative English"
var class3 = "Compiler Theory"


//var arrClasses:[String]     //Shorthand declaration

var arrClasses = Array<String>()  //declaration


arrClasses = []

var arrZeros = [Int](count: 10, repeatedValue: 0)   //Array of Ints with 10 items and all initilized to 0


var arrSlots = ["Morning", "Afternoon", "Evening", "Night"]

var numberOfClasses = arrClasses.count

//MARK: - Appending Values

arrClasses.append("Finance")
arrClasses.append("Learning MS Office")

arrClasses += ["Algorithms"]
arrClasses += ["Basket Weaving", "Bread Weaving", "Cheese Tasting"]

numberOfClasses = arrClasses.count

arrClasses[0] = "Basics of Finance"         // Modifies the 1st element
println("\(arrClasses)")

//MARK: - Removing Values
arrClasses.removeAtIndex(1)     //Removes 2nd element
println("\(arrClasses)")

//MARK:- Inserting Values
arrClasses.insert("Creative Writing", atIndex: 2)
println("\(arrClasses)")

//MARK: - Iterating Values
for sClass in arrClasses {
    println("Class Name: \(sClass)")
}

//MARK: - Enumerate Values
for (index, value) in enumerate(arrClasses) {
    println("Class at index \(index + 1) is \(value)")
}

//MARK: - Dictionary Objects

var dClassTimes : [String:String]   //Specified both the key and value would be of type String

var myCourse : [String: String] = ["CP1001":"Computing Basics", "FP1001":"Finance Basics", "CP2002":"Algorithms"]

var theSubject = myCourse["CP1001"]
println("The subject name for CP1001 is \(theSubject!)")

var _CODE_ = "CP1005"
println("The subject name for CP1001 is \(myCourse[_CODE_])")

if let invSubject = myCourse["CPxxxx"] {
    println("The invalid subject is \(invSubject)")
}

//MARK: - Adding Values
myCourse["OZ1001"] = "Custom Subject"
println("\(myCourse)")

//MARK: - Replacing Values
myCourse["CP1001"] = "Basics of Computing"
myCourse.updateValue("Basics of Finance", forKey: "FP1001")
println("\(myCourse)")

//MARK: - Removing a Value
myCourse["CP2002"] = nil
println("\(myCourse)")

myCourse.removeValueForKey("CP1001")
println("\(myCourse)")

myCourse.removeValueForKey("LP1001")    //Non existant key

//MARK: - Iterating Values
for (key, value) in myCourse {
    println("The key: \(key) has a value of : \(value)")
}

var allKeys = myCourse.keys.array
println("\(allKeys)")

var allValues = myCourse.values.array
println("\(allValues)")


//MARK: - Tuples

var webError : (Int, String)
webError = (404, "Page not found")

var myTuple = ("07:00", "Morning Run", true)

//MARK: - Accessing Members of Tuples

var (errorCode:Int, errorDescription:String) = webError


println("The components of webError are code: \(webError.0) and description: \(webError.1)")

//MARK: - Named Access to tuple members

var namedError = (code:200, description:"OK")
println("The components of named error are code: \(namedError.code) and descritption: \(namedError.description)")

var theCode = namedError.code   //returns the error code

//MARK: - Strings

var testing = "This is a test"
for char in testing {
    println("The char is \(char)")
}

//MARK: - Appending Strings

var strSmall = "Small "
strSmall = strSmall + "string "
strSmall += "with added text"

//MARK: - Formatting String
var theStr = "the test string"
var length = count(theStr)
var strResult = "the length of \(theStr) is \(length)"
println(strResult)

//MARK: Any and AnyObject
var someValue:Any = "Frogs"
someValue = 6
someValue = "Green Tree Frogs"

var stringValue = "Green Frogs"
//stringValue = 6

var castedString = someValue as! String

//MARK: - The If statement
var berry = "black"
if berry == "red" {
    println("This is not a blackberry")
}


//MARK:- The if..else statement

var numApples = 3
if numApples > 5 {
    println("You have enough Apples")
} else {
    println("You might want to buy soome more Apples")
}


//MARK: - The if..elseif..else statement
var platform = "MAC"
if platform == "MAC" {
    println("This is running Apple OS X")
} else if platform == "WIN" {
    println("This is running Microsoft Windows X")
} else {
    println("This could be running Linux")
}

//MARK: - Ternary Operator

var eggs = 0
var bread = eggs > 0 ? 12 : 1

//MARK: - The for-increment loop

for var i=0; i<10; i++ {
    println("The value of i is \(i)")
}

for var i=0, j=0, k=0; i<=10; i++, j--, k+=5 {
    println("The value of i=\(i) j=\(j) k=\(k)")
}

//MARK: - Using for with strings

for i in "Hello" {
    println("The value of i = \(i)")
}

//MARK: - Using for with numeric ranges
for i in 1..<10 {
    println("The value of i is \(i)")
}


//MARK: - Stepped ranges

for i in stride(from: 1, through: 20, by: 3){
    println("The value of i is \(i)")
}
//Equivalent of ...


for i in stride(from: 1, to: 20, by: 3){
    println("The value of i is \(i)")
}
//Equivalent of ..<

for i in stride(from: 100, to: 20, by: -3){
    println("The value of i is \(i)")
}
// Negative stepped range




//MARK: - The While loop

var coins = 0
while coins < 10 {
    coins += 1
    println("We have mined \(coins) coins")
}

println("Total coins mined: \(coins)")

coins = 0
do {
    coins += 1
    println("We have mied \(coins) coins")
} while coins < 10
println("Total coins mined: \(coins)")


//MARK: - The switch condition

/*
var age1 = 28
switch age1 {
case 0:
println("Baby")
case 1:
println("Toddler")
}
// This would make the compiler complain as it is not exhaustive, needs a default clause
*/

var age1 = 28
switch age1 {
case 0:
    println("Baby")
case 1:
    println("Toddler")
default:
    println("Others")
}


switch age1 {
case 0:
    println("Baby")
case 1, 2, 3:
    println("Toddler")
case 4, 5, 6, 7, 8, 9, 10, 11, 12:
    println("Child")
default:
    println("Other")
}

switch age1 {
case 0:
    println("Baby")
case 1...3:
    println("Toddler")
case 4...12:
    println("Child")
case 13...19:
    println("Teen")
default:
    println("Other")
}

switch age1{
case 0...17, 60...99:
    println("Not working")
default:
    println("Working")
}


var berry1 = "red"
switch berry1 {
case "red":
    println("This is a red berry")
case "blue":
    println("This is a blue berry")
case "black":
    println("This is a black berry")
default:
    println("This is not a berry")
}

var aScore = (100, "Temple Bun")
switch aScore {
case (1000, "Temple Bun"):
    println("You made the high score")
default:
    println("A little more \(1000-aScore.0) and you can beat the high score")
}


switch aScore {
case (_, "Temple Bun"):
    println("Wow, I could never score on this game")
case(100, _):
    println("Yay!, you are a player... I have not yet tried \(aScore.1)")
default:
    println("All play make Jack a dull boy")
}

switch aScore {
case (_, "Temple Bun"):
    println("Wow, I could never score on this game")
    fallthrough
case(100, _):
    println("Yay!, you are a player... I have not yet tried \(aScore.1)")
default:
    println("All play make Jack a dull boy")
}

var theNumber = 1
switch theNumber {
case 1:
    println("One")
    fallthrough
case 2:
    println("Two")
case 3:
    println("Three")
default:
    println("Default")
}


switch aScore {
case (let score, "Temple Bun"):
    println("Wow, I could never score \(score) on this game")
case(100, let game):
    println("Yay!, you are a player... I have not yet tried \(game)")
default:
    println("All play make Jack a dull boy")
}


var marks = (80, "Math")
switch marks {
case (let score, let subject) where score > 75 && subject == "Math":
    println("You got an HD in Math")
case (50..<80, let subject):
    println("You passed the subject \(subject)")
case (let score, let subject):
    println("You scored \(score) in \(subject)")
default:
    ()
}

//MARK: - Functions
func noValues() {
    println("this returns no values")
}

//MARK: No-Return value
func returnOne() -> Int {
    return 1
}

var one = returnOne()

//MARK: Single-Return Value

func returnMany() -> (Int, String) {
    return (404, "Page not found")
}

var error = returnMany()

//MARK: - Parameters

//MARK: Single parameter

func strLength(theStr: String) -> Int {
    return count(theStr)
}

var len = strLength("Hello World")

//MARK: Multiple Parameters
func multiplyNum(num1: Int, by num2: Int) -> Int {
    return num1 * num2
}

var res = multiplyNum(7, by:4)

//MARK: Named Parameters

func appendString(theString first: String, withString second: String) -> String {
    return "\(first) \(second)"
}

//var strRes = appendString("Hello", "World")

var strRes = appendString(theString:"Hello", withString: "World!")


//MARK: Shorthand external parameters

func appendStrings(#theString: String, #withString: String) -> String {
    return "\(theString) \(withString)"
}
var theBook = appendStrings(theString: "Swift", withString: "Rocks")

//MARK: Optional parameters with default values

func replicate(times: Int, theString: String = "-") -> String {
    var result = ""
    for i in 1...times {
        result += theString
    }
    return result
}

var dashes = replicate(20)

//var plusses = replicate(20, "+")      // Gives an Error

var plusses = replicate(20, theString: "+")

//MARK: Passing multiple parameters

func add(numbers: Int ...) ->Int {
    var result = 0
    for i in numbers {
        result += i
    }
    
    return result
}

var total = add(3, 7, 2, 9, 12, 11)

//MARK: Using Closures

func startFrom(startValue: Int) -> (() -> Int) {
    var _startVal = startValue
    func increment() -> Int{
        return ++_startVal
    }
    return increment
}

var counter1 = startFrom(1)
var counter2 = startFrom(10)

counter1()
counter2()

//MARK: - Classes

// Stooge Class V 1.0
/*
class Stooge{
var name: String = ""

func getName() -> String{
return self.name
}
}


var stooge1 = Stooge()
stooge1.name = "Moe"
println("The name of the first stooge is \(stooge1.getName())")

var stooge2 = Stooge("Larry")
*/

//MARK: New revision of the Stooge class v2.0
/*
class Stooge{
var name: String = ""

func lengthName() -> Int {
return countElements(self.name)
}

init(forName: String){
self.name = forName
}
}

//var stooge2 = Stooge("Larry")

var stooge2 = Stooge(forName: "Larry")
*/

/*
//MARK: New revision of the Stooge Class v3.0
class Stooge {
var name: String
var firstAppear: Int

init(_ forName: String) {
self.name = forName
self.firstAppear = 1900
}

convenience init(){
self.init("Unknown")
}

convenience init(_ forName: String, _ year:Int){
self.init(forName)
self.firstAppear = year
}

func lengthName() -> Int {
return countElements(self.name)
}
}

var stooge3 = Stooge("Moe", 1934)

println("\(stooge3.firstAppear)")
stooge3.theYear = 67
*/

//MARK: New revision of the Stooge Class v4.0
class Stooge {
    var name: String
    var firstAppear: Int
    
    var theYear: Int {
        get{
            return self.firstAppear - 1900
        }
        set {
            self.firstAppear = newValue + 1900
        }
    }
    
    init(_ forName: String) {
        self.name = forName
        self.firstAppear = 1900
    }
    
    convenience init(){
        self.init("Unknown")
    }
    
    convenience init(_ forName: String, _ year:Int){
        self.init(forName)
        self.firstAppear = year
    }
    
    func lengthName() -> Int {
        return count(self.name)
    }
}

var stooge3 = Stooge("Moe", 1934)

println("\(stooge3.firstAppear)")		// Prints 1934
stooge3.theYear = 67
println("\(stooge3.firstAppear)")		// Prints 1967

//MARK: - Enumerations

/*
enum eStooges: Int {
case Moe = 1
case Larry
case Curly
case Shemp
case Joe
}

var aStooge = eStooges.Moe
*/

//MARK: V2.0 of Enumerations

enum eStooges: Int {
    case Moe = 1
    case Larry
    case Curly
    case Shemp
    case Joe
    
    func toString() -> String {
        switch self{
        case .Moe:
            return "Moe"
        case .Larry:
            return "Larry"
        case .Curly:
            return "Curly"
        case .Shemp:
            return "Shemp"
        case .Joe:
            return "Joe"
        default:
            return "Unknown"
        }
    }
    
}

var aStooge = eStooges.Moe
println(aStooge.toString())

var theStooge: eStooges = .Curly
println("\(theStooge.toString())")      // Curly
println("\(theStooge.rawValue)")        // 3

//MARK: - Extensions

extension Int {
    var square: Int {
        return self * self
    }
}

4.square
println("\(3.square)")

extension String {
    var reverse: String {
        var result: String = ""
        for i in self {
            result = String(i) + result
        }
        return result
    }
}

"Hello".reverse         // shows elloH


//MARK: - Operator Overloading


//MARK: Prefix Operator
prefix operator √{}
prefix func √ (theNumber: Double) -> Double {
    return sqrt(theNumber)
}

var sqRoot1 = √144  // 12.0
var sqRoot2 = √16   // 4.0


//MARK: Postfix Operator
postfix operator %{}
postfix func %(theNumber: Double) -> Double {
    return theNumber / 100
}

var rads1 = 60%         // 0.6
var rads2 = 152%        // 1.52


infix operator %%{}
func %%(theNumber: Double, ofTheSecond:Double) -> Double {
    return (ofTheSecond * theNumber) / 100
}

var rads3 = 60 %% 50
var rads4 = 152 %% 3


//MARK: Infix Operator
infix operator ** {}
func ** (theString: String, times: Int) -> String {
    var res = theString
    for i in 1..<times {
        res += theString
    }
    return res
}

var buffer = "Hello" ** 5       // HelloHelloHelloHelloHello

















