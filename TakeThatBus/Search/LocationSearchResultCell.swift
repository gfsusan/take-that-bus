//
//  LocationSearchResultCell.swift
//  TakeThatBus
//
//  Created by Susan Kim on 21/08/2019.
//  Copyright © 2019 Susan Kim. All rights reserved.
//

import UIKit

class LocationSearchResultCell: UITableViewCell {
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        guard let imageView = imageView,
            let textLabel = textLabel,
            let detailTextLabel = detailTextLabel else { return }
        
        imageView.image = #imageLiteral(resourceName: "location-pin")
        
        hstack(imageView,
               stack(textLabel,
                     detailTextLabel))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
