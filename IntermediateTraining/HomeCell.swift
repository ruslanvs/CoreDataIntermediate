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
        backgroundColor = .myTeal
        textLabel?.text = "Comp"
        textLabel?.textColor = .white
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
