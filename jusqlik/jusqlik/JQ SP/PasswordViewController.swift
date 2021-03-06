//
//  PasswordViewController.swift
//  jusqlik
//
//  Created by Arun Pandian on 06/09/20.
//  Copyright © 2020 Arun Pandian. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var conPassword: UITextField!
    
    @IBOutlet weak var signUpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpBtn.layer.cornerRadius = 5
        signUpBtn.layer.masksToBounds = true
        
        passwordField.addBottomBorder()
        conPassword.addBottomBorder()

        // Do any additional setup after loading the view.
    }
    @IBAction func signBtnAction(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
               let nextViewController = storyBoard.instantiateViewController(withIdentifier: "KycProcessViewController") as! KycProcessViewController
         self.navigationController?.pushViewController(nextViewController, animated: true)
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
