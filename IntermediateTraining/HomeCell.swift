//
//  HomeCell.swift
//  IntermediateTraining
//
//  Created by Ruslan Suvorov on 6/30/18.
//  Copyright © 2018 Lets Build That App. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let tealColor = UIColor(red: 48/255, green: 164/255, blue: 182/255, alpha: 1)
        backgroundColor = tealColor
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
