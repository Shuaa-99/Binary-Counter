//
//  ViewController.swift
//  Binary Counter
//
//  Created by administrator on 06/10/2021.
//

import UIKit

class ViewController: UIViewController {

  

    @IBOutlet weak var totallabel: UILabel!
    
    var total = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "myCellID", for: indexPath) as! BinaryTableViewCell
        cell.delegat = self
        cell.bainaryLabel.text = String(describing: pow(10, indexPath.row))
   return cell }
}
extension ViewController: BinaryDeleget {
    func numUpdet(num: Int) {
       self.total += num
            totallabel.text = "Total: " + String( self.total)
    }
    
   
    
}
