//
//  customCollectionView.swift
//  Tabbar With collectionView TableView
//
//  Created by OLX on 13/05/24.
//

import UIKit

class customCollectionView: UIViewController {
    
    
    
    var responseMsg = [
        ["First Name": "kane", "Last Name": "Billimason"],
        ["First Name": "Amit", "Last Name": "Kumar"],
        ["First Name": "jakky", "Last Name": "stevvv"],
        ["First Name": "Shyam", "Last Name": "Singh"],
        ["First Name": "John", "Last Name":  "Deo"],
        ["First Name": "Ankit", "Last Name": "Maurya"],
        ["First Name": "Amit", "Last Name": "Kumar"],
        ["First Name": "david", "Last Name": "adison"],
        ["First Name": "Shyam", "Last Name": "Singh"],
        ["First Name": "John", "Last Name":  "Deo"],
        ["First Name": "pat", "Last Name": "cumminss"],
        ["First Name": "Amit", "Last Name": "Kumar"],
        ["First Name": "Rohan", "Last Name": "Kanoo"],
        ["First Name": "darry", "Last Name": "Mitchel"],
        ["First Name": "John", "Last Name":  "Deo"],
        ["First Name": "Ankit", "Last Name": "Maurya"],
        ["First Name": "marnus", "Last Name": "kabuuu"],
        ["First Name": "jamese", "Last Name": "Anders"],
        ["First Name": "deamn", "Last Name": "oppppo"],
        ["First Name": "John", "Last Name":  "Deo"]
    ]


    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    
 

}






extension customCollectionView:UICollectionViewDelegate{
    
}





extension customCollectionView:UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? customCollectionViewCell{
            
            
            let person = responseMsg[indexPath.item]
            if let firstName = person["First Name"], let lastName = person["Last Name"] {
                cell.labelFirstName.text = "\(firstName)"
                cell.labelLastName.text  = "\(lastName)"
            }
            
            return cell
            
        }
            else{
               return UICollectionViewCell()
          }
    }
    
    
}
