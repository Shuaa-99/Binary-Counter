//
//  BinaryTableViewCell.swift
//  Binary Counter
//
//  Created by administrator on 06/10/2021.
//

import UIKit
protocol BinaryDeleget: AnyObject {
    func numUpdet (num: Int)
    
    
}
class BinaryTableViewCell: UITableViewCell {

    @IBOutlet weak var bainaryLabel: UILabel!
  weak  var delegat: BinaryDeleget?
    @IBAction func sumANDsubBott(_ sender: UIButton) {
        var num = Int(bainaryLabel!.text!)
        if sender.titleLabel!.text == "-"{
            num = -num!
        }
        delegat?.numUpdet(num: num!)
        
    }
    
}
