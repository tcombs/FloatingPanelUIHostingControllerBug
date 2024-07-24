import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func navigate(_ sender: Any) {
        let view = HostingControllerExampleView()
        let hostingViewController = MyUIHostingController(rootView: view)
        self.navigationController?.pushViewController(hostingViewController, animated: true)
    }
}

