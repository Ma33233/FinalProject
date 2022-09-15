//
//  SearchBarViewController.swift
//  FinalProject
//
//  Created by AlenaziHazal on 16/02/1444 AH.
//

import UIKit

class SearchBarViewController: UIViewController {
    @IBOutlet weak var collectionViewSearch: UICollectionView!
    @IBOutlet weak var seachBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewSearch.delegate = self
        collectionViewSearch.dataSource = self
        collectionViewSearch.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")

    }
}


extension SearchBarViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let exCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        
        exCell.layer.cornerRadius = 16
        
        return exCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showMoreInfo", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMoreInfo"{
            if let secondPage = segue.destination as? CollectionInfoViewController{
                
            }
        }
    }
    
    
}
