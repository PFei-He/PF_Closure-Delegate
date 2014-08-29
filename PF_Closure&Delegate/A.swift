//
//  A.swift
//  PF_Closure&Delegate
//
//  Created by PFei_He on 14-8-18.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

import Foundation

protocol A的协议 {
    func A的代理方法(参数: String)
//    func A的代理方法(参数: String) -> Void
    func A的代理方法_回调自身(参数: AnyObject)
//    func A的代理方法_回调自身(参数: AnyObject) -> Void
    func A的代理方法带返回值(参数: String) -> String
    func A的代理方法带返回值_回调自身(参数: AnyObject) -> String
}

class A: NSObject {

    var A的代理: A的协议?

    func A的回调代理() {
        self.A的代理!.A的代理方法("代理传值")
    }

    func A的回调代理_回调自身() {
        self.A的代理!.A的代理方法_回调自身(self)
    }

    func A的回调代理带返回值() {
        println(self.A的代理!.A的代理方法带返回值("代理传值"))
    }

    func A的回调代理带返回值_回调自身() {
        println(self.A的代理!.A的代理方法带返回值_回调自身(self))
    }

    func A的回调闭包(参数名称: (参数: String) -> Void) {
        参数名称(参数: "闭包传值")
    }

    func A的回调闭包_回调自身(参数名称: (参数: AnyObject) -> Void) {
        参数名称(参数: self)
    }

    func A的回调闭包带返回值(参数名称: (参数: String) -> String) {
        println(参数名称(参数: "闭包传值"))
    }

    func A的回调闭包带返回值_回调自身(参数名称: (参数: AnyObject) -> String) {
        println(参数名称(参数: self))
    }
}
