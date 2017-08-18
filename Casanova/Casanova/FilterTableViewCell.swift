//
//  FilterTableViewCell.swift
//  Casanova
//
//  Created by Xiaoyu Guo on 8/6/17.
//  Copyright © 2017 Xiaoyu Guo. All rights reserved.
//

import UIKit

class FilterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkBox: UIView!
    @IBOutlet weak var title: UILabel!
    
    var checked: Bool = false {
        didSet {
            updateUI()
        }
    }
    
    func toggle() -> Bool {
        checked = !checked
        return checked
    }
    
    func updateUI() {
        self.checkBox.layer.backgroundColor = self.checked ? Colors.HomeVC.FilterView.filterCheckboxColor().cgColor : UIColor.clear.cgColor
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Style
        selectionStyle = .none
        // Checkbox config
        checkBox.layer.borderWidth = 1
        checkBox.layer.cornerRadius = 2
        checkBox.layer.masksToBounds = true
        checkBox.layer.borderColor = Colors.HomeVC.FilterView.filterCheckboxColor().cgColor
        // Title label config
        title.font = Fonts.HomeVC.FilterView.filterSelectionTextFont()
        title.textColor = Colors.HomeVC.FilterView.filterSelectionTextColor()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        checked = selected
    }
}