//
//  OtpViewController.swift
//  jusqlik
//
//  Created by Arun Pandian on 06/09/20.
//  Copyright © 2020 Arun Pandian. All rights reserved.
//

import UIKit
import KWVerificationCodeView

class OtpViewController: UIViewController {

    @IBOutlet weak var otpView: KWVerificationCodeView!
    
    @IBOutlet weak var verifyBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verifyBtn.layer.cornerRadius = 5
        verifyBtn.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }
    

    @IBAction func verifyOtpView(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "PasswordViewController") as! PasswordViewController
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
        
    }
    
    @IBAction func resentOtnBtnAction(_ sender: Any) {
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
