//
//  CustomTableViewCell.swift
//  Tabbar With collectionView TableView
//
//  Created by OLX on 13/05/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
   //  @IBOutlet weak var labelName: UILabel!
    //@IBOutlet weak var labelFirstName: UILabel!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelBody: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
