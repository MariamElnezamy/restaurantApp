//
//  SigninViewController.swift
//  Project
//
//  Created by Admin on 10/1/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit
import FirebaseAuth


class SigninViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var Email: UITextField!
    
    @IBOutlet var Pass: UITextField!
    
    
    
    @IBAction func SignInBtnAction(_ sender: UIButton) {
        
        
        Auth.auth().createUser(withEmail: Email.text!, password: Pass.text!) { (User, Error) in
            
            
            if Error == nil {
                
                self.performSegue(withIdentifier: "next", sender: nil)
                print("Done")
                
            }
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    // Social Sharing Button
    
    
    @IBAction func facebookBtn(_ sender: Any) {
        
        let ActivityVC = UIActivityViewController(activityItems: ["www.Facebook.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
    }
    
    @IBAction func GoogleBtn(_ sender: Any) {
        
        let ActivityVC = UIActivityViewController(activityItems: ["www.Google.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
        
        
    }

}
