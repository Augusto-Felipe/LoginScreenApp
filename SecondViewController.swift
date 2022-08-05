//
//  SecondViewController.swift
//  LoginScreenApp
//
//  Created by Felipe Augusto Correia on 05/08/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var myName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myLabel.text = "Bem vindo \(myName)"
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
