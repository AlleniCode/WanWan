//
//  LoginViewController.swift
//  WanWanCore
//
//  Created by 张玉涛 on 2020/8/1.
//  Copyright © 2020 Wanwan. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.setupUI()
    }
    
    // MARK: - UI
    func setupUI() {
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
    }
    
    // MARK: - Action
    @IBAction func loginAction(_ sender: Any) {
        
    }
    
    @IBAction func registerAction(_ sender: Any) {
        self.performSegue(withIdentifier: "showRegisterVC", sender: nil)
    }
    
    @IBAction func passwordForgetAction(_ sender: Any) {
        self.performSegue(withIdentifier: "showPasswordForgetVC", sender: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
