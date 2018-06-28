//: Playground - noun: a place where people can play

import UIKit

/*
 使用KVC的条件
    1.当前的类必须继承自NSOBject
    2.在调用setValuesForKeysWithDictionary之前,先调用super.init()
*/

//swift4 需要 在文件聲明@objcMembers 或者 在變量前聲明@objc ，setValuesForKeys(dict)方法才能正確設置變量（不然會跑setValue(_ value: Any?, forUndefinedKey key: String)）
@objcMembers
class Person : NSObject {
    var name : String = ""
    var age : Int = 0
    
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print("undefine \(key)")
    }
    
}


let p = Person(dict: ["name" : "why", "age" : 18, "height" : 1.88])
print(p.name)
print(p.age)
