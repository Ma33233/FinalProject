//
//  SceneDelegate.swift
//  FinalProject
//
//  Created by Maan Abdullah on 11/09/2022.
//

import UIKit
import FirebaseAuth
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?    
    let userDefault = UserDefaults.standard
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        if self.userDefault.object(forKey: "email") != nil
            && self.userDefault.object(forKey: "password") != nil{
            autoLogin()
            print("22222")
        }
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }

    func autoLogin(){
        let dbAuthRef = Auth.auth()
            dbAuthRef.signIn(withEmail: userDefault.object(forKey: "email") as! String, password: userDefault.object(forKey: "password") as! String) { result, error in
                print("3333")
                        // check if there is in login process
                        guard error == nil else{
    //                        self.showError("Email/Password is invaild")
                            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                            let logInViewController: LogInViewController = storyboard.instantiateViewController(withIdentifier: "login") as! LogInViewController
                            logInViewController.passwordChanged(error!.localizedDescription)
                            self.window?.rootViewController = logInViewController
                            print("44444")
                            return
                        }
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let homeViewController: ResetViewController = storyboard.instantiateViewController(withIdentifier: "A1") as! ResetViewController
                self.window?.rootViewController = homeViewController
                print("55555")
                
                
            }}
}


