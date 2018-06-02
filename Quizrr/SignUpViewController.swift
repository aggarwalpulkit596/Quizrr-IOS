//
//  SignUpViewController.swift
//  Quizrr
//
//  Created by Pulkit Aggarwal on 27/05/18.
//  Copyright © 2018 Quizrr. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var numberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        container.layer.cornerRadius = container.frame.height/2
        container.backgroundColor = Colors.background1
        signUpButton.applyDesign()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
