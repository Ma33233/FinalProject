//
//  ViewController.swift
//  FinalProject
//
//  Created by Maan Abdullah on 11/09/2022.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var noteForLogoOrAppName: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var labelForSginUp: UILabel!
    @IBOutlet weak var labelForForgetPassword: UILabel!
    @IBOutlet weak var labelErorrDisplay: UILabel!
    @IBOutlet weak var labelForPasswordEnter: UILabel!
    @IBOutlet weak var labelForEmailEnter: UILabel!
    @IBOutlet weak var passwordTextEnter: UITextField!
    @IBOutlet weak var emailTextEnter: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func logInButten(_ sender: Any) {
    }
    @IBAction func forgetPasswordButten(_ sender: Any) {
        performSegue(withIdentifier: "forgetPassword", sender: nil)
    }
    @IBAction func sginUpButten(_ sender: Any) {
        performSegue(withIdentifier: "sginUp", sender: nil)
    }
    @IBAction func backOrDismiss(segue: UIStoryboardSegue) {
        
    }
}

