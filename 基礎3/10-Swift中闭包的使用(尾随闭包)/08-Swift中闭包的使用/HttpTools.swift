//
//  HttpTools.swift
//  08-Swift中闭包的使用
//
//  Created by 1 on 16/6/17.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

/*
 如果一个类继承了NSObject,那么在调用方法时,还是OC的发送消息
*/

class HttpTools {
    
    var finishedCallback : ((_ result : String) -> ())?
    
    // 闭包类型: (参数列表) -> (返回值的类型)  () -> ()
    // loadData:
    func loadData(finishedCallback: @escaping (_ result : String) -> ()) {
        
        self.finishedCallback = finishedCallback
        // 1.发送异步请求
        DispatchQueue.global().async {
            DispatchQueue.main.sync {
                
                print("回调主线程,回调数据:\(Thread.current)")
                
                finishedCallback("json数据")
            }
        }
        
    }
    
    // 函数重载
    func loadData(age : Int) {
        
    }
}
