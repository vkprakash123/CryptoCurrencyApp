//
//  CryptoTableViewCell.swift
//  CryptoCrazy
//
//  Created by Krishna Prakash on 06/12/22.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var CurrencyText: UILabel!
    
    @IBOutlet weak var priceText: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
