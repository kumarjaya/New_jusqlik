//
//  LoginViewController.swift
//  jusqlik
//
//  Created by Arun Pandian on 06/09/20.
//  Copyright © 2020 Arun Pandian. All rights reserved.
//

import UIKit
import KWVerificationCodeView
class LoginViewController: UIViewController {
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var contryCodeField: UITextField!
    @IBOutlet weak var letGoBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        letGoBtn.layer.cornerRadius = 5
        
        letGoBtn.layer.masksToBounds = true
        
        phoneNumberField.addBottomBorder()
        
        contryCodeField.addBottomBorder()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func letGoBtnAction(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "OtpViewController") as! OtpViewController
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


extension UITextField {
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
