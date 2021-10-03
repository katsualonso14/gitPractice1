//layout test
//  TestApp

import UIKit
import AVFoundation
 
class ViewController: UIViewController, AVAudioPlayerDelegate, AVSpeechSynthesizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        button2()
        
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
    }
 
    
    @objc func PushButton(sender: UIButton) {
        print("tap")
    }
    
    func button() {
        let button: UIButton = UIButton()
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
//        connstraitでlayoutを調整する
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.6).isActive = true
        button.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        
        button.setTitle("你好", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(PushButton), for: .touchUpInside)
        
    }
    
    func button2() {
        let button2: UIButton = UIButton()
        self.view.addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.backgroundColor = .red
//        connstraitでlayoutを調整する
        button2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100.0).isActive = true
        button2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.6).isActive = true
        button2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        
        button2.setTitle("你好", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.addTarget(self, action: #selector(PushButton), for: .touchUpInside)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
		
