//
//  Stk.swift
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
import STK.Cpp.Stk
protocol Stk {
    var object: UnsafeRawPointer { get }
}
extension Stk {
    var sampleRate: Float32 {
        get {
            Stk_sampleRate(object)
        }
        set {
            Stk_setSampleRate(object, newValue)
        }
    }
}
