//
//  OtpViewController.swift
//  Quizrr
//
//  Created by Pulkit Aggarwal on 28/05/18.
//  Copyright © 2018 Quizrr. All rights reserved.
//

import UIKit

class OtpViewController: UIViewController {

    @IBOutlet weak var otpfield1: UIView!
    @IBOutlet weak var otpfield2: UIView!
    @IBOutlet weak var otpfield3: UIView!
    @IBOutlet weak var otpfield4: UIView!
    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var third: UITextField!
    @IBOutlet weak var fourth: UITextField!
    
    @IBOutlet weak var otpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        otpButton.applyDesign()
        otpfield1.changedesign()
        otpfield2.changedesign()
        otpfield3.changedesign()
        otpfield4.changedesign()
//        first.delegate
//        second.delegate
//        third.delegate
//        fourth.delegate
        first.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
        second.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
        third.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
        fourth.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func textFieldDidChange(textField: UITextField){
        let text = textField.text
        if  text?.count == 1 {
            switch textField{
            case first:
                second.becomeFirstResponder()
            case second:
                third.becomeFirstResponder()
            case third:
                fourth.becomeFirstResponder()
            case fourth:
                fourth.resignFirstResponder()
            default:
                break
            }
        }
        if  text?.count == 0 {
            switch textField{
            case first:
                first.becomeFirstResponder()
            case second:
                first.becomeFirstResponder()
            case third:
                second.becomeFirstResponder()
            case fourth:
                third.becomeFirstResponder()
            default:
                break
            }
        }
        else{
            
        }
    }


}
extension UIView{
    func changedesign(){
        self.layer.cornerRadius = self.frame.height/2
        self.backgroundColor = Colors.background1
        self.layer.borderWidth = 2
        self.layer.borderColor = Colors.black.cgColor
    }
}


