//: Playground - noun: a place where people can play

import UIKit

// 1.字典的定义
// 1.1.不可变字典的定义: 使用let修饰
// 编译器会自动判断[]中是键值对(字典)还是元素(数组)
// [String : NSObject] --> Dictionary<String, NSObject>
let dict = ["name" : "why", "age" : 18, "height" : 1.88] as [String : Any]

// 1.2.可变字典的定义: 使用var修饰
// var dictM = Dictionary<String, NSObject>()
var dictM = [String : NSObject]()


// 2.可变字典的基本操作(增删改查)
// 2.1.添加元素
dictM.updateValue("lmj" as NSObject, forKey: "name")
dictM.updateValue("yz" as NSObject, forKey: "name")
dictM["age"] = 10 as NSObject
dictM["height"] = 1.60 as NSObject
dictM


// 2.2.删除元素
dictM.removeValue(forKey: "age")
dictM

// 2.3.修改元素
dictM.updateValue(1.58 as NSObject, forKey: "height")
dictM["height"] = 1.50 as NSObject
dictM

// 2.4.取出元素
dictM["name"]


// 3.字典的遍历
// 3.1.遍历字典中所有的key
for key in dict.keys {
    print(key)
}

print("----------")

// 3.2.遍历字典中所有的value
for value in dict.values {
    print(value)
}

print("----------")

// 3.3.遍历字典中所有的key/value
for (key, value) in dict {
    print(key)
    print(value)
}


// 4.字典的合并
// 即使类型一致,也不能相加合并
let dict1 = ["name" : "why", "age" : 18] as [String : Any]
var dict2 = ["height" : 1.88, "phoneNum" : "+86 110"] as [String : Any]

// let resultDict = dict1 + dict2
/* 方式一:
var resultDict = [String : NSObject]()
for (key, value) in dict1 {
    resultDict[key] = value
}
for (key, value) in dict2 {
    resultDict[key] = value
}

resultDict
*/

for (key, value) in dict1 {
    dict2[key] = value
}













