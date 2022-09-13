//
//  ProfileViewController.swift
//  FinalProject
//
//  Created by AlenaziHazal on 17/02/1444 AH.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelNumberOfFollower: UILabel!
    @IBOutlet weak var viewContener: UIView!
    @IBOutlet weak var labelNumberOfSection: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func editProfile(_ sender: Any) {
    }
    @IBAction func logOutButten(_ sender: Any) {
    }
    @IBAction func shortReviewBio(_ sender: Any) {
        performSegue(withIdentifier: "ShortReview", sender: nil)
    }
    @IBAction func BackProfile(segue: UIStoryboardSegue) {
        
    }
}
