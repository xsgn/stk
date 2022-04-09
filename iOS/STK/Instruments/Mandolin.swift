//
//  Mandolin.swift
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
import STK.Cpp.Instrmnt
public final class Mandolin : Instrmnt {
    public let object: UnsafeRawPointer
    public init() {
        object = Mandolin_new()
    }
    deinit {
        Mandolin_delete(object)
    }
}
