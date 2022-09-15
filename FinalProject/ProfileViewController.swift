//
//  ProfileViewController.swift
//  FinalProject
//
//  Created by AlenaziHazal on 17/02/1444 AH.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var viewContener: UIView!
    @IBOutlet weak var EditProfileBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var followView: UIView!
    @IBOutlet weak var presentBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "profileTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell")
        profileView.layer.cornerRadius = 32
        tableView.layer.cornerRadius = 16
        followView.layer.cornerRadius = 16
        EditProfileBtn.layer.cornerRadius = 16
        
    }
    @IBAction func editProfile(_ sender: Any) {
        performSegue(withIdentifier: "ShortReview", sender: nil)
    }
    
    @IBAction func logOutButten(_ sender: Any) {
    }
    
    @IBAction func shortReviewBio(_ sender: Any) {
        performSegue(withIdentifier: "moreInfo", sender: nil)
    }
    
    @IBAction func BackProfile(segue: UIStoryboardSegue) {
        
    }
}




extension ProfileViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! profileTableViewCell
        
        cell.layer.cornerRadius = 16
//        cell.categoryLabel.text = "فئة"
//        cell.titleLabel.text = "العنوان"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return 5
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        headerView.backgroundColor = view.backgroundColor
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
}


