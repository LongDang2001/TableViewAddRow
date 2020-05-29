

import UIKit

class ViewControllerADDRow: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var btADD: UIButton!
    
    @IBOutlet weak var myTableView: UITableView!
    var arrayNumber: [String] = ["so mot","so hai","so ba","so bon","so nam"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell")
        cell?.textLabel?.text = arrayNumber[indexPath.row]
        return cell!
    }
    // ham xoa text trong table view
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.arrayNumber.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
         let viewControllerOuputRow = unwindSegue.source as? ViewControllerOuputRow
        arrayNumber.append(viewControllerOuputRow!.dataOuputRow!)
        // Nhiều hướng nó gọi là tableView vì nó khai báo tên tableView: UITableView!
        myTableView.reloadData()
    }
    
    
    


}
