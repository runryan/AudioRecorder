//
//  ViewController.swift
//  AudioRecorder
//
//  Created by ryan on 11/27/2019.
//  Copyright (c) 2019 ryan. All rights reserved.
//

import UIKit
import AudioRecorder
import SwiftCommonTools2

class ViewController: UIViewController, AudioRecorderDelegate {

    @IBOutlet weak var duration: UILabel!
    private var audioRecorder: AudioRecorder?

    override func viewDidLoad() {
        super.viewDidLoad()
        duration.text = "0 / 180s"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func record(_ sender: UIButton) {
        if audioRecorder == nil {
            guard let docPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else {
                return
            }
            let voiceDir = URL(fileURLWithPath: docPath)
            let audioRecorder = AudioRecorder(voiceDirectory: voiceDir, maxDuration: 180)
            audioRecorder.delegate = self
            self.audioRecorder = audioRecorder
        }
        if audioRecorder?.isRecording == true {
            audioRecorder?.stop()
            sender.setTitle("开始录制", for: .normal)
            return
        }
        do {
            try audioRecorder?.record(voiceName: "1212")
            sender.setTitle("停止录制", for: .normal)
        } catch(let error) {
            Log.e("录制出错 \(error)")
        }
    }
    
    func onAudoRecorderStatusChanged(_ recorder: AudioRecorder, _ status: AudioRecorderStatus) {
        switch status {
        case .recording(let time, let duration):
            Log.i("录制中，时间变化 time = \(time), duration = \(duration)")
            self.duration.text = "\(time) / \(duration)s"
        case .powerChanged(let power):
            Log.i("音量大小变化……", power)
        case .pause:
            Log.i("音频录制暂停了……")
        case .stop:
            Log.i("录制的音频路径：", recorder.voiceURL)
        }
    }
}

