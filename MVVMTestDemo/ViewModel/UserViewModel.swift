//
//  UserViewModel.swift
//  MVVMTestDemo
//
//  Created by MyMac on 9/29/21.
//

import Foundation
import Alamofire
import TableViewReloadAnimation

class UserViewModel {
    
    weak var vc: ViewController?
    var userArray = [UserModel]()
    
    //------------------------------------------------------
    
    //MARK: Service call with URL Session
    
    func getUserData()  {
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/posts")!) { data, response, error in
            if error == nil {
                if let data = data {
                    do{
                        let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                        print(userResponse)
                        self.userArray.append(contentsOf: userResponse)
                        DispatchQueue.main.async {
                            self.vc?.tblUser.reloadData(
                                with: .simple(duration: 0.75, direction: .rotation3D(type: .ironMan),
                                constantDelay: 0))
                        }
                    } catch let err{
                        print(err.localizedDescription)
                    }
                }
            
            } else {
                print(error?.localizedDescription)
            }
        }.resume()
    }
    
    //------------------------------------------------------
    
    //MARK: Service call with Alomofire
    
    func getUserDataWithAF() {
        AF.request("https://jsonplaceholder.typicode.com/posts").response {response in
            if let data = response.data{
                do{
                    let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                    print(userResponse)
                    self.userArray.append(contentsOf: userResponse)
                    DispatchQueue.main.async {
                        self.vc?.tblUser.reloadData(
                            with: .simple(duration: 0.75, direction: .rotation3D(type: .ironMan),
                            constantDelay: 0))
                    }
                } catch let err{
                    print(err.localizedDescription)
                }
            }
        }
    }
}
