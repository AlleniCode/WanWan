//
//  RegisterViewController.swift
//  WanWanCore
//
//  Created by 张玉涛 on 2020/8/1.
//  Copyright © 2020 Wanwan. All rights reserved.
//

import UIKit

class RegisterViewController: BaseViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var verifyCodeTextField: UITextField!
    @IBOutlet weak var verifyCodeButton: UIButton!
    @IBOutlet weak var confirmButton: UIButton!
    
    var seconds = 60
    var timer: DispatchSourceTimer? = nil
    
    // MARK: - Life Cycle
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        timer?.cancel()
        timer = nil
    }
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
    @IBAction func verfiyCodeAction(_ sender: Any) {
        if (seconds == 60) {
            if timer == nil {
                timer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.global())
            }
            timer!.schedule(deadline: .now(), repeating: 1.0)
            timer!.setEventHandler {
                self.seconds -= 1
                if self.seconds <= 0 {
                    self.timer?.cancel()
                    self.seconds = 60
                    DispatchQueue.main.async {
                       self.verifyCodeButton.setTitle("获取验证码", for: .normal)
                    }
                } else {
                    print(self.seconds)
                    DispatchQueue.main.async {
                       self.verifyCodeButton.setTitle("\(self.seconds)s", for: .normal)
                    }
                }
            }
            timer!.resume()
            
            WWApi.getVerificationCode(phone: <#T##String#>) { (<#Any#>, <#(errorCode: Int, errorMessage: String)#>) in
                <#code#>
            }
        }
    }
    
    @IBAction func confirmAction(_ sender: Any) {
        print("确认")
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
