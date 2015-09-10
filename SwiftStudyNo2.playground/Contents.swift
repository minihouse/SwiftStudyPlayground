//: Playground - noun: a place where people can play

//import UIKit


/*:
## Swift講座 #2
*/


//: 数値型の型推論
let intA = 100

let intB:Int = intA
//let intC:Uint = intA

let doubleA = 10.0
let doubleB:Double = doubleA
//let doubleC:Float = doubleA


//: 範囲型と区間型
//let intH1: HalfOpenInterval<Int> = 0..<10
//let intC1: ClosedInterval<Int> = 0...10
//
//
//let intH2: HalfOpenInterval<Int> = HalfOpenInterval(0, 10)
//let intC2: ClosedInterval<Int> = ClosedInterval(0, 10)
//
//
//let n = 10
//switch n {
//case 0..<10:
//    print("0..<10")
//case 0...10:
//    print("0...10")
//default:
//    break
//}
//
//let m = 10
//switch m {
//case intH1:
//    print("0..<10")
//case intC1:
//    print("0...10")
//default:
//    break
//}
//
//let range1: Range<Int> = 0..<10
//let range2: Range<Int> = Range(start: 0, end: 10)
//
//for i in 0..<10 {
//    print("\(i)")
//}
//
//for i in range1 {
//    print("\(i)")
//}

//: Stride型
//var str1 = 0.stride(through: 20, by: 5)
//for i in str1 {
//    print(i)
//}
//for i in 0.stride(through: 20, by: 5) {
//    print(i)
//}

//; 文字列と文字
//var strA: String = "もじ"
//var strB: String = "れつ"
//let strC: String = strA + strB
//
//strA += strB
//
//strA == strB
//strA == strC
//
//"あ" < "か"
var strA = "もじれつ"
var strD = "\(strA) \(10 + 20)"

var cafe: [Character] = ["c", "a", "f", "e"]
var cafeStr: String = String(cafe)
cafeStr.characters.count

let acuteAccent: Character = "\u{0301}"
var acuteAccentStr = String(acuteAccent)
cafeStr.append(acuteAccent)
cafeStr.characters.count
cafeStr.unicodeScalars.count
cafeStr.utf8.count
cafeStr.utf16.count

//: コレクション
class Fruit {
}

class Apple : Fruit {
}

class Orange : Fruit {
}

var fruits: [Fruit] = []
let apple = Apple()
let orange = Orange()
fruits.append(apple)
fruits.append(orange)
//fruits.append(100)

var numList: [Int] = []
numList.append(100)

var boolList: [Bool] = []
boolList.append(true)


//: AnyObject型とAny型
class MyClass {
}

let m1 = MyClass()

var anyObjectArray: [AnyObject]
anyObjectArray = [m1]
// UIKitをimportすれば通る
//anyObjectArray = ["aaa", 100, true]

var anyArray: [Any]
anyArray = [m1]
anyArray = ["aaa", 100, true]


