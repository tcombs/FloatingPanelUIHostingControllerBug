import SwiftUI
import FloatingPanel

class MyUIHostingController<Content>: UIHostingController<Content> where Content: View {
    
    var fpc: FloatingPanelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add drawer to view
        fpc = FloatingPanelController()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let drawerViewController = storyboard.instantiateViewController(withIdentifier: "Drawer")
        
        fpc.set(contentViewController: drawerViewController)
        fpc.addPanel(toParent: self)
    }
}
