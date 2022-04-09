//
//  Rhodey.swift
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
import STK.Cpp.Rhodey
class Rhodey : Instrmnt {
    let object: UnsafeRawPointer
    init() {
        object = Rhodey_new()
    }
    deinit {
        Rhodey_delete(object)
    }
}
