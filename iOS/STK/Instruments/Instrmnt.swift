//
//  Instrmnt.swift
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
import STK.Cpp.Instrmnt
protocol Instrmnt : Stk {
    
}
extension Instrmnt {
    func noteOn(frequency: Float32, amplitude: Float32) {
        Instrmnt_noteOn(object, frequency, amplitude)
    }
    func noteOff(amplitude: Float32) {
        Instrmnt_noteOff(object, amplitude)
    }
    func tick() -> Float32 {
        Instrmnt_tick(object)
    }
}
