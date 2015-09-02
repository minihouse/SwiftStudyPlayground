//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

var str = "Hello, playground"


/*:
## Swift講座 #1
*/

/*:
### Playground
*/
//: 変数の値の確認
var num = 100
num = num * 10

num

//: 数値の変化のグラフ
var x = 2
var y = 0
for i in 0...100 {
    y = x * i * i
    XCPCaptureValue("y", value: y)
}

//: ビューの確認は右の+ボタンで見れる
let viewA = UIView(frame: CGRectMake(0, 0, 200, 200))
viewA.backgroundColor = UIColor.redColor()
//: アニメーションの動きの確認はXCPShowViewを使ってTimelineで確認
UIView.animateWithDuration(2.0) { () -> Void in
    viewA.backgroundColor = UIColor.blueColor()
}

XCPShowView("viewA", view: viewA)


/*:
### 静的な型チェック
*/
//: 変数セットでの静的型チェック
//var stringA:String
//stringA = "aaaa"
//stringA = 100

//: メソッドの引数渡しでの静的型チェック
//func makeString(word:String) -> String {
//    return word + " Good!"
//}
//
//makeString("Swift")
//makeString(100)

/*:
### 暗黙の型変換ができない
*/
//var intNum: Int = 100000
//var int8Num: Int8 = 10
//intNum = int8Num
//intNum = Int(int8Num)

/*:
### 初期化していない変数は使えない
*/
//var intNumA: Int
//var intNumB = intNumA
//
//var intNumC: Int = 10
//var intNumD = intNumC

/*:
### Optional
*/
//var strA: String
//strA = nil
//
//var strB: String?
//strB = nil
//
//strA = "hello world!"
//strA.characters.count
//
//strB = "hello world!"
//strB!.characters.count
/*:
### 数値のオーバーフローの例
*/
//: EXC_BAD_INSTRUCTIONというエラーが発生
//var num1 = Int8.max
//num1 = num1 + 1
//: &+にするとオーバーフローを許容
//num1 = num1 &+ 1

/*:
### switchでdefault必須
*/
//func level(score:Int) -> String {
//    switch score {
//    case 1:
//        return "Level1"
//    case 2:
//        return "Level2"
//    default:
//        return "none"
//    }
//    
//    return "none"
//}

//: enumの場合、全ての要素を満たせればエラーにならない
//enum Level : Int {
//    case Level1 = 1
//    case Level2 = 2
//}
//
//
//func levelString(level:Level) -> String {
//    switch level {
//    case .Level1:
//        return "Level1"
//    case .Level2:
//        return "Level2"
//    }
//}





