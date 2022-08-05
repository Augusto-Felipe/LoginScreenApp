//
//  ViewController.swift
//  LoginScreenApp
//
//  Created by Felipe Augusto Correia on 05/08/22.
//

import UIKit

extension UITextField {
func setIcon(_ image: UIImage) {
   let iconView = UIImageView(frame:
                  CGRect(x: 10, y: 5, width: 20, height: 20))
   iconView.image = image
   let iconContainerView: UIView = UIView(frame:
                  CGRect(x: 20, y: 0, width: 30, height: 30))
   iconContainerView.addSubview(iconView)
   leftView = iconContainerView
   leftViewMode = .always
}
}

class ViewController: UIViewController {
    
    //Vars
    var username: String = ""
    var password: String = ""
    var checkPassword: String = ""
    
    
    //Button Var
    @IBOutlet weak var signUpbutton: UIButton!
    
    //Icon Set
    @IBOutlet weak var usernameTextField: UITextField! {
        didSet {
            usernameTextField.tintColor = UIColor.lightGray
            usernameTextField.setIcon(UIImage(named: "user-icon")!)
        }
    }
    
    //Icon Set
    @IBOutlet weak var passwordTextField: UITextField! {
        didSet {
            passwordTextField.tintColor = UIColor.lightGray
            passwordTextField.setIcon(UIImage(named: "password-icon")!)
        }
    }
    
    @IBOutlet weak var checkPasswordTextField: UITextField!
    

    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    //Button Action
    @IBAction func signUpClicked(_ sender: UIButton) {
        
        if usernameTextField.text == username {
            makeAlert(message: "Username Not Found!")
        } else {
            if passwordTextField.text == password {
                makeAlert(message: "Password Not Found!")
            } else {
                if checkPasswordTextField.text != passwordTextField.text {
                    makeAlert(message: "Passwords Did Not Match!")
                } else {
                    username = usernameTextField.text!
                }
            }
            
        }
        

        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    //Make Alert function
    func makeAlert(message: String) {
        //Alert Var
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        //OK Button
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    //Prepare Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            //as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = username
        }
    }
    
}

