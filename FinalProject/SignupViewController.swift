//
//  SignupViewController.swift
//  FinalProject
//
//  Created by Maan Abdullah on 12/09/2022.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
class SignupViewController: UIViewController {
    let dbAuthRef = Auth.auth()
    let db = Firestore.firestore()
    override func viewDidLoad() {
        super.viewDidLoad()

        setupElements()
    }
    
    func setupElements(){
        // Hide the error label
        //errorLabel.alpha = 0
        
        // Styling elements
//        Utilities.styleTextField(emailTxtField)
//        Utilities.styleTextField(userNameTxtField)
//        Utilities.styleTextField(fullNameTxtField)
//        Utilities.styleTextField(passwordTxtField)
//        Utilities.styleFilledButton(signupBtn)
    }
    
    func signUp(){
//        // Validates fields is in the way we want.
//       let checking =  validateFields()
//        guard checking == nil else {
//            showError(checking!)
//        }
        
        // Create the user
//        dbAuthRef.createUser(withEmail: emailTxtField.text, password: passwordTxtField.text) { result, error in
//            // check if there is an error creating the user
//            guard error == nil else{
//                showError("Error creating user, check your network please!")
//            }
//
//            // create cleaned fields
//            let userName = userNameTxtField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//            let fullName = fullNameTxtField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
//            // User craeted successfully.
//            db.collection("Users").document(result!..user.uid).setData(
//                ["userName" : userName,
//                 "fullName" : fullName]) { error in
//                     guard error == nil else {
//                         showError("Error creating user, check your network please!")
//                     }
//                     successfulCreating()
//                 }
//
//        }
    }
    
    func validateFields() -> String?{
//        guard emailTxtField.text.trammingCharacter(.whiteSpacesAndNewLines) == "", userNameTxtField.text == "", fullNameTxtField.text == "", passwordTxtField.text == "", else {
//            return "Please fill in all the fields"
//        }
//        guard Utilities.isEmailValid(emailTxtField.text) == true {
//            return "Invalid email"
//        }
//
//        guard Utilities.isPasswordValid(passwordTxtField.text) == true {
//            return "Please make sure your password is at least 8 characters, contains a number and a special character"
//        }
       return nil
    }
    
    func showError(_ msg: String){
//    errorLabel.text = msg
//    errorLabel.alpha = 1
}
    
    func successfulCreating(){
//        let alert = UIAlertController(title: "Successful", message: "New user has been created successfuly", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
//            let vc = storyboard?.instantiateViewController(withIdentifier: "home")
//            self.present(vc, animated: true)
//
//        }))
//        self.present(alert, animated: true)
    }

}
   
