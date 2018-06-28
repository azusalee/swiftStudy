//: Playground - noun: a place where people can play

import UIKit

// 1.应用场景一:
let str = "123"
let result : Int? = Int(str)

// 2.应用场景二:
let urlString = "http://www.520it.com"
let url : NSURL? = NSURL(string: urlString)

if url != nil {
    let request = NSURLRequest.init(url: url! as URL)
    //let request = NSURLRequest(URL: url! as URL)
}

if let url = url {
    let request = NSURLRequest.init(url: url as URL)
}

// 3.应用场景三:
let path : String? = Bundle.main.path(forResource: "123.plist", ofType: nil)

if let path = path {
    NSArray(contentsOfFile: path)
}
