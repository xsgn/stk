//
//  Rhodey.swift
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
import STK.Cpp.Instrmnt
public final class Rhodey : Instrmnt {
    public let object: UnsafeRawPointer
    public init() {
        object = Rhodey_new()
    }
    deinit {
        Rhodey_delete(object)
    }
}
