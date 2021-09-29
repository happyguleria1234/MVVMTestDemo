//
//  ViewController.swift
//  MVVMTestDemo
//
//  Created by MyMac on 9/29/21.
//

import UIKit
import Foundation

class ViewController : UIViewController, UITableViewDelegate , UITableViewDataSource {
        
    @IBOutlet weak var tblUser: UITableView!
    
    var viewUserModel = UserViewModel()

    //------------------------------------------------------
    
    //MARK: Memory Management Method
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //------------------------------------------------------
    
    deinit { //same like dealloc in ObjectiveC
        
    }
    
    //------------------------------------------------------
    
    //MARK: UITable view delegate datasourse
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewUserModel.userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        cell.setupData(userData: viewUserModel.userArray[indexPath.row])
        return cell
    }
    
    //------------------------------------------------------
    
    //MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewUserModel.getUserDataWithAF()
        viewUserModel.vc = self
        tblUser.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
    
    //------------------------------------------------------
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //------------------------------------------------------
}
