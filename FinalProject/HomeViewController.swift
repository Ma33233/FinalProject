//
//  HomeViewController.swift
//  FinalProject
//
//  Created by AlenaziHazal on 16/02/1444 AH.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var collectionViewHome: UICollectionView!
    @IBOutlet weak var addSetionBtn: UIButton!
    @IBOutlet weak var labelAppName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewHome.delegate = self
        collectionViewHome.dataSource = self
        collectionViewHome.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        addSetionBtn.layer.cornerRadius = 16
        

        // Do any additional setup after loading the view.
    }
    @IBAction func addSectionButten(_ sender: Any) {
        performSegue(withIdentifier: "addSection", sender: nil)
    }
    @IBAction func backHome(segue: UIStoryboardSegue) {
        
    }
}


extension HomeViewController : UICollectionViewDataSource , UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        
        cell.layer.cornerRadius = 16
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showInfo", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showInfo"{
            if let secondPage = segue.destination as? CollectionInfoViewController{
                
            }
        }
    }
    
    
}
