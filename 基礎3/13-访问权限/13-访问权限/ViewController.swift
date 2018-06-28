//
//  ViewController.swift
//  13-访问权限
//
//  Created by 1 on 16/6/17.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

/*
 1，private
 private 访问级别所修饰的属性或者方法只能在当前类里访问。
 
 2，fileprivate
 fileprivate 访问级别所修饰的属性或者方法在当前的 Swift 源文件里可以访问。（比如上面样例把 private 改成 fileprivate 就不会报错了）
 
 3，internal（默认访问级别，internal修饰符可写可不写）
 internal 访问级别所修饰的属性或方法在源代码所在的整个模块都可以访问。
 如果是框架或者库代码，则在整个框架内部都可以访问，框架由外部代码所引用时，则不可以访问。
 如果是 App 代码，也是在整个 App 代码，也是在整个 App 内部可以访问。
 
 4，public
 可以被任何人访问。但其他 module 中不可以被 override 和继承，而在 module 内可以被 override 和继承。
 
 5，open
 可以被任何人使用，包括 override 和继承。
 
 原文出自：www.hangge.com  转载请保留原文链接：http://www.hangge.com/blog/cache/detail_524.html
*/

private class ViewController: UIViewController {
    
    internal var name : String = ""
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class Person {
    func test() {
        ViewController().name = "why"
    }
}
