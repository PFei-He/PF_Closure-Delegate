//
//  C.swift
//  PF_Closure&Delegate
//
//  Created by PFei_He on 14-8-18.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

import Foundation

class C: NSObject, B的协议 {
    func 输出字符串() {
        var b的对象 = B()
        b的对象.B的代理 = self
        b的对象.B的回调代理()

        b的对象.B的回调闭包 { (参数) -> Void in
            println(参数)
        }

        b的对象.B的回调闭包_回调自身 { (参数) -> Void in
            println(参数)
        }

        b的对象.B的回调闭包带返回值 { (参数) -> String in
            return "闭包传值"
        }

        b的对象.B的回调闭包带返回值_回调自身 { (参数) -> String in
            return "闭包传值"
        }
    }

    func B的代理方法(参数: String) {
        println(参数)
    }

    func B的代理方法_回调自身(参数: AnyObject) {
        println(参数)
    }

    func B的代理方法带返回值(参数: String) -> String {
        return "代理传值"
    }

    func B的代理方法带返回值_回调自身(参数: AnyObject) -> String {
        return "代理传值"
    }
}
