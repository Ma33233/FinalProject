//
//  AddSessionViewController.swift
//  FinalProject
//
//  Created by Faisal Almutairi on 18/02/1444 AH.
//

import UIKit
import DropDown
class AddSessionViewController: UIViewController {

    @IBOutlet weak var chooseLabel: UILabel!
    @IBOutlet weak var categoryView: UIView!
    @IBOutlet weak var detailsTextView: UITextView!
    @IBOutlet weak var timesSegmented: UISegmentedControl!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    
    let dropDown = DropDown()
    
    let categoryList = ["طبي","تقني","فني","هندسي","رياضي"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.cornerRadius = 16
        view2.layer.cornerRadius = 16
        detailsTextView.layer.cornerRadius = 16
        categoryView.layer.cornerRadius = 4
        
        chooseLabel.text = "اختر"
        dropDown.anchorView = categoryView
        dropDown.dataSource = categoryList

        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        DropDown.startListeningToKeyboard()
        dropDown.direction = .bottom
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
            self.chooseLabel.text = categoryList[index]
        }
        
    }
    
    
    @IBAction func chooseCategory(_ sender: Any) {
        dropDown.show()
    }
}
