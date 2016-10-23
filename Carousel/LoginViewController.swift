//
//  LoginViewController.swift
//  Carousel
//
//  Created by Kyler Blue on 10/19/16.
//  Copyright © 2016 Kyler Blue. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var signInScrollView: UIScrollView!
    
    @IBOutlet weak var fieldParentView: UIView!
    
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var didPressBack: UIButton!
    
    
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.isHidden = true
        
        signInScrollView.delegate = self
        
        signInScrollView.contentSize = signInScrollView.frame.size
        signInScrollView.contentInset.bottom = 100
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            // Scroll the scrollview up
            self.signInScrollView.contentOffset.y = self.signInScrollView.contentInset.bottom
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
        }
        
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func didPressSignIn(_ sender: AnyObject) {
        // Do login stuff
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
            delay(1.0, closure: {
                let alertTitle = self.emailField.text!.isEmpty ? "Email" : "Password"
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
                let alertController = UIAlertController(title: alertTitle.appending(" required!"), message: "Please enter a valid email and password", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action:UIAlertAction) in
                })
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            })
            
        } else {
            
            // if correct credentials
            delay(0.8, closure: {
                self.performSegue(withIdentifier: "signInSegue", sender: nil)
            })
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if signInScrollView.contentOffset.y <= -50 {
            // Hide the keyboard
            view.endEditing(true)
        }
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {        navigationController?.popToRootViewController(animated: true)
    
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
