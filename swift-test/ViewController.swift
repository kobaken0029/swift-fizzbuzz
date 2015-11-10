import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.keyboardType = .NumberPad
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onClickButton(sender: AnyObject) {
        label.text = fizzBuzz(Int(textField.text!)!)
        self.view.endEditing(true)
    }

    func fizzBuzz(num:Int) -> String {
        return num % 15 == 0 ? "FizzBuzz"
            : num % 3 == 0 ? "Fizz"
            : num % 5 == 0 ? "Buzz"
            : num.description
    }
}
