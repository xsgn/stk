//
//  Guitar.swift
//  STK
//
//  Created by Kota Nakano on 4/9/22.
//
import STK.Cpp.Instrmnt
public final class Guitar : Instrmnt {
    public let object: UnsafeRawPointer
    public init() {
        object = Guitar_new()
    }
    deinit {
        Guitar_delete(object)
    }
}
