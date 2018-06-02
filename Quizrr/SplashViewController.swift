//
//  SplashViewController.swift
//  Quizrr
//
//  Created by Pulkit Aggarwal on 26/05/18.
//  Copyright © 2018 Quizrr. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        getStartedButton.applyDesign()

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
extension UIButton{
    func applyDesign(){
        self.setGradientColor(colorOne: Colors.buttonred1, colorTwo: Colors.buttonred2)

        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
        self.setTitleColor(UIColor.white, for: .normal )
        
        self.layer.shadowColor = UIColor.blue.cgColor
        self.layer.shadowRadius = 6
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}
