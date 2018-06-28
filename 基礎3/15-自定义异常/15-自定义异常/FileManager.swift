//
//  FileManager.swift
//  15-自定义异常
//
//  Created by 1 on 16/6/17.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

enum ReadFileErrorType : Error {
    case FileNameNotNull
    case FilePathNotFound
    case FileReadError
}

class FileManager: NSObject {
    func readMsgFromFileName(fileName : String) throws -> String {
        // 1.判断filePath是否是一个空的字符串""
        if fileName == "" {
            // 抛出异常
            throw ReadFileErrorType.FileNameNotNull
        }
        
        // 2.判断文件路径是否存在
        guard let filePath = Bundle.main.path(forResource: fileName, ofType: nil) else {
            // 抛出异常
            throw ReadFileErrorType.FilePathNotFound
        }
        
        // 3.读取文件
        guard let data = NSData(contentsOfFile: filePath) else {
            // 抛出异常
            throw ReadFileErrorType.FileReadError
        }
        
        return String(data: data as Data, encoding: String.Encoding.utf8)!
    }
}
