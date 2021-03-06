//
//  CityCell.swift
//  OpenWeatherDemo
//
//  Created by Kyle Watson on 7/6/17.
//  Copyright © 2017 Kyle Watson. All rights reserved.
//

import UIKit
import Foundation

class CityCell: UITableViewCell {
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var currentTemperature: UILabel!
    
    var representedModel: BriefCityCondition? {
        didSet {
            guard let model = representedModel else {
                resetUiComponents()
                return
            }
            
            cityName.text = model.city
            currentTemperature.text = "\(model.temperature)°"
            conditionImageView.image = UIImage(named: model.iconName)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        resetUiComponents()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        resetUiComponents()
    }
    
    private func resetUiComponents() {
        cityName.text = nil
        conditionImageView.image = nil
        currentTemperature.text = nil
    }
}
