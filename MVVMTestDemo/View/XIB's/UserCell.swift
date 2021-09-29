//
//  UserCell.swift
//  MVVMTestDemo
//
//  Created by MyMac on 9/29/21.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupData(userData : UserModel) {
        lblTitle.text = userData.title
        lblId.text = "\(userData.id ?? Int())"
        lblData.text = userData.body
    }
    
}
