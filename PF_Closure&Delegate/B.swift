//
//  B.swift
//  PF_Closure&Delegate
//
//  Created by PFei_He on 14-8-18.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

import Foundation

protocol B的协议 {
    func B的代理方法(参数: String)
//    func B的代理方法(参数: String) -> Void
    func B的代理方法_回调自身(参数: AnyObject)
//    func B的代理方法_回调自身(参数: AnyObject) -> Void
    func B的代理方法带返回值(参数: String) -> String
    func B的代理方法带返回值_回调自身(参数: AnyObject) -> String
}

class B: NSObject, A的协议 {

    var B的代理: B的协议?

    func B的回调代理() {
        var a的对象 = A()
        a的对象.A的代理 = self
        a的对象.A的回调代理()
        a的对象.A的回调代理_回调自身()
        a的对象.A的回调代理带返回值()
        a的对象.A的回调代理带返回值_回调自身()
    }

    func A的代理方法(字符串: String) {
        self.B的代理!.B的代理方法(字符串)
    }

    func A的代理方法_回调自身(参数: AnyObject) {
        self.B的代理!.B的代理方法_回调自身(self)
    }

    func A的代理方法带返回值(字符串: String) -> String {
        return self.B的代理!.B的代理方法带返回值(字符串)
    }

    func A的代理方法带返回值_回调自身(参数: AnyObject) -> String {
        return self.B的代理!.B的代理方法带返回值_回调自身(self)
    }

    func B的回调闭包(参数名称: (参数: String) -> Void) {
        var a的对象 = A()
        a的对象.A的回调闭包(参数名称)
    }

    func B的回调闭包_回调自身(参数名称: (参数: AnyObject) -> Void) {
        var a的对象 = A()
        a的对象.A的回调闭包_回调自身 { (参数) -> Void in
            return 参数名称(参数: self)
        }
    }

    func B的回调闭包带返回值(参数名称: (参数: String) -> String) {
        var a的对象 = A()
        a的对象.A的回调闭包带返回值(参数名称)
    }

    func B的回调闭包带返回值_回调自身(参数名称: (参数: AnyObject) -> String) {
        var a的对象 = A()
        a的对象.A的回调闭包带返回值_回调自身 { (参数) -> String in
            return 参数名称(参数: self)
        }
    }
}
