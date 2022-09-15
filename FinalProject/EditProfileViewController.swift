//
//  EditProfileViewController.swift
//  FinalProject
//
//  Created by Faisal Almutairi on 18/02/1444 AH.
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet weak var bioTextView: UITextView!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var saveProfileBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        saveProfileBtn.layer.cornerRadius = 16
        editView.layer.cornerRadius = 16
        bioTextView.layer.cornerRadius = 16
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func saveProfileBtn(_ sender: Any) {
    }
}
