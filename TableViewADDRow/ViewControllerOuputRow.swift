

import UIKit

class ViewControllerOuputRow: UIViewController {

    @IBOutlet weak var tfOuputRow: UITextField!
    @IBOutlet weak var btSave: UIButton!
    
    var dataOuputRow: String?
//    @IBAction func unWindSave(btSave: UIStoryboardSegue) {
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataOuputRow != nil {
            tfOuputRow.text = dataOuputRow
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataOuputRow = tfOuputRow.text
    }
    

    

}
