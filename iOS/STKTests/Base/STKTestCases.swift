//
//  STKTestCases.swift
//  STKTests
//
//  Created by Kota Nakano on 4/9/22.
//
import AVFoundation
import XCTest
@testable import STK
class Unit : AUAudioUnit {
    var output = try!AUAudioUnitBus(format: .init(commonFormat: .pcmFormatFloat32, sampleRate: 16000, channels: 2, interleaved: false)!)
    override var inputBusses: AUAudioUnitBusArray {
        .init(audioUnit: self, busType: .input, busses: [])
    }
    override var outputBusses: AUAudioUnitBusArray {
        .init(audioUnit: self, busType: .output, busses: [output])
    }
    override var internalRenderBlock: AUInternalRenderBlock {
        let inst0: some Instrmnt = Mandolin()
        let inst1: some Instrmnt = Rhodey()
        var t = 0
        return {
            _ = $6
            let buffer = UnsafeMutableAudioBufferListPointer($4)
            assert(buffer.count == 2)
            let frames = $2
            assert(buffer[0].mNumberChannels == 1)
            let ch0 = UnsafeMutableBufferPointer<Float32>(buffer[0])
            let ch1 = UnsafeMutableBufferPointer<Float32>(buffer[1])
            for k in 0..<Int(frames) {
                if t % 11025 == 0 {
                    let f = Float32.random(in: 200...500)
                    inst0.noteOn(frequency: f, amplitude: .random(in: 0.1...0.5))
                    inst1.noteOn(frequency: f * 1.5, amplitude: .random(in: 0.1...0.5))
                }
                ch0[k] = inst0.tick()
                ch1[k] = inst1.tick()
                t += 1
            }
            return 0
        }
    }
}
class STKTestCases: XCTestCase {
    let engine = AVAudioEngine()
    override func setUp() async throws {
        try await super.setUp()
        let xsgn = "XSGN".compactMap { $0.asciiValue }.reduce(0) { $0 << 8 + UInt32($1) } as OSType
        let desc = AudioComponentDescription(componentType: kAudioUnitType_MusicDevice,
                                             componentSubType: kAudioUnitSubType_MIDISynth,
                                             componentManufacturer: xsgn,
                                             componentFlags: 0,
                                             componentFlagsMask: 0)
        AUAudioUnit.registerSubclass(Unit.self, as: desc, name: "STK", version: 0)
        async let node = AVAudioUnit.instantiate(with: desc)
        try await engine.attach(node)
        try await engine.connect(node,
                                 to: engine.mainMixerNode,
                                 format: engine.mainMixerNode.inputFormat(forBus: 0))
        try engine.start()
    }
    override func tearDown() async throws {
        engine.stop()
        try await super.tearDown()
    }
}
extension STKTestCases {
    func testPlayRendering() {
        Thread.sleep(forTimeInterval: 10)
    }
}
