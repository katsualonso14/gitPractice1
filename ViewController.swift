// ボタンをタップして音を出す
// 中国語音声読み上げ
//  TestApp

import UIKit
import AVFoundation
 
class ViewController: UIViewController, AVAudioPlayerDelegate, AVSpeechSynthesizerDelegate {
    
    var audioPlayer:AVAudioPlayer!
    let  synthesizer = AVSpeechSynthesizer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button()
        
        view.backgroundColor = .white
    
        
    }
    
 
    
    @objc func PushButton(sender: UIButton) {
        
        let utterance = AVSpeechUtterance.init(string: "你好")
        let voice = AVSpeechSynthesisVoice.init(language: "zh-CN")
        utterance.voice = voice
    synthesizer.speak(utterance)
        
        print("tap")
    }
    
    func button() {
        let button: UIButton = UIButton(frame: CGRect(x: 70, y: 150, width: 300, height: 150))
        button.setTitle("button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(PushButton), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    
    
}
		
