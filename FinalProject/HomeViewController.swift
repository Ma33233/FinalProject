//
//  HomeViewController.swift
//  FinalProject
//
//  Created by AlenaziHazal on 16/02/1444 AH.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var collectionViewHome: UICollectionView!
    @IBOutlet weak var labelAppName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addSectionButten(_ sender: Any) {
        performSegue(withIdentifier: "addSection", sender: nil)
    }
    @IBAction func backHome(segue: UIStoryboardSegue) {
        
    }
}
