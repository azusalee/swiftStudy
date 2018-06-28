//: Playground - noun: a place where people can play

import UIKit


// 0.定义字符串
let urlString = "www.520it.com"

// 1.方式一: 将String类型转成NSString类型,再进行截取
//let header = (urlString as NSString).substring(to: 3)
//let footer = (urlString as NSString).substring(from: 10)
//let range = NSMakeRange(4, 5)
//let middle = (urlString as NSString).substring(with: range)



// 2.方式二: 采用swift原有的方法

let headerIndex = urlString.prefix(3)

let index1 = urlString.index(urlString.startIndex, offsetBy: 1)
let index2 = urlString.index(urlString.endIndex, offsetBy: -1)
let subStr = urlString[index1...index2]



//let header1 = urlString.substringToIndex(headerIndex)
//
//let footerIndex = urlString.endIndex.advancedBy(-3)
//let footer1 = urlString.substringFromIndex(footerIndex)
//
//let range1 = Range(urlString.startIndex.advancedBy(4), in: urlString.endIndex.advancedBy(-4))
//let middle1 = urlString.substringWithRange(range1)
