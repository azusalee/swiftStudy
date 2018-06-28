//
//  HttpTools.swift
//  08-Swift中闭包的使用
//
//  Created by 1 on 16/6/17.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

class HttpTools: NSObject {
    // 闭包类型: (参数列表) -> (返回值的类型)  () -> ()
    func loadData(finishedCallback: @escaping (_ result : String) -> ()) {
        // 1.发送异步请求
        DispatchQueue.global().async {
            DispatchQueue.main.sync {
                
                print("回调主线程,回调数据:\(Thread.current)")
                
                finishedCallback("json数据")
            }
        }
       
    }
}
