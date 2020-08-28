//
//  PasswordForgetViewController.swift
//  WanWanCore
//
//  Created by 张玉涛 on 2020/8/1.
//  Copyright © 2020 Wanwan. All rights reserved.
//

import UIKit

class PasswordForgetViewController: BaseViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var verifyCodeTextField: UITextField!
    @IBOutlet weak var verifyCodeButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    // MARK: - Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - UI
    func setupUI() {
        confirmButton.layer.cornerRadius = 5
        confirmButton.layer.masksToBounds = true
    }
    
    // MARK: - Action
    @IBAction func verifyCodeAction(_ sender: Any) {
    }
    
    @IBAction func confirmAction(_ sender: Any) {
        
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
