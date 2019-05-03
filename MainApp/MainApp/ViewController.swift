
import UIKit
import WrapperFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // THIS IS expected
        WrapperClass.wrapperFunc()

        // !!! THSI SHOULD NBOT BE VISIBLE
        SomeClass().someFunction()
    }


}

