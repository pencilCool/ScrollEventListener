//
//  ScrollEventListener.swift
//  ScrollEventListener
//
//  Created by yuhua Tang on 2022/11/19.
//

import UIKit

public class ScrollEventListener {
    public var scrollClosure:(()->Void)?
    public var stopClosure:(()->Void)?
    
    private var allowListen = false
    
    public init(scrollClosure: ( () -> Void)? = nil, stopClosure: ( () -> Void)? = nil) {
        self.scrollClosure = scrollClosure
        self.stopClosure = stopClosure
    }
    
    public init() {
        
    }
    
    public func start() {
        allowListen = true
        listenNoScroll()
    }
    
    public func stop() {
        allowListen = false
    }
    
    private func listenScroll() {
        guard allowListen else {
            return
        }
        RunLoop.main.perform(inModes: [.UITrackingRunLoopMode]) {
            self.scrollClosure?()
            self.listenNoScroll()
        }
        
    }
    
    private func listenNoScroll() {
        guard allowListen else {
            return
        }
        RunLoop.main.perform(inModes: [.defaultRunLoopMode]) {
            self.stopClosure?()
            self.listenScroll()
        }
    }
}

