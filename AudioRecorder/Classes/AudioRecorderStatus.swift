//
//  AudioRecorderStatus.swift
//  AudioRecorder_Example
//
//  Created by ryan on 2019/11/27.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

public enum AudioRecorderStatus {
    case recording(time: Int, duration: Int)
    case powerChanged(power: Float)
    case pause
    case stop
}
