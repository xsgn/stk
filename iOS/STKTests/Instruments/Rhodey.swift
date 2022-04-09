//
//  Rhodey.swift
//  STKTests
//
//  Created by Kota Nakano on 4/9/22.
//
import XCTest
@testable import STK
class RhodeyTests: XCTestCase {}
extension RhodeyTests {
    func testCreate() {
        let rhodey: some Instrmnt = Rhodey()
        rhodey.noteOn(frequency: 440, amplitude: 1)
        let mag = Array(repeating: (), count: 16000).map(rhodey.tick).map(abs).reduce(0, +)
        XCTAssertNotEqual(mag, 0)
    }
}
