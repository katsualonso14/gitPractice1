
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func pushButton(_ sender: Any) {
        label.text = "a"
        label.text = "b"
        print("test")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

