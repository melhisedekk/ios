//
//  AllGroupsTV_Cell.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 12.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

class AllGroupsTV_Cell: UITableViewCell {
    
    @IBOutlet weak var AllGroupTV_CellName: UILabel!
    @IBOutlet weak var AllGroupTV_CellImage: UIImageView!
}

@IBDesignable final class RoundedImageView: UIImageView { //скругление, рамки у картинки
    
    @IBInspectable var myBorderWidth: CGFloat = 5.0 {
        didSet { self.updateBorderWidth() }
    }
    
    @IBInspectable var myBorderColor: UIColor = .black   {
        didSet { self.updateBorderColor() }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        layer.borderColor = UIColor.red.cgColor
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    
    func updateBorderWidth () {
        layer.borderWidth = self.myBorderWidth
    }
    
    func updateBorderColor () {
        layer.borderColor = self.myBorderColor.cgColor
    }
    
    //       override func layoutSubviews() {
    //
    //            super.layoutSubviews()
    //
    //        layer.borderColor = myBorderColor.cgColor
    //        layer.borderWidth = 3
    //        layer.cornerRadius = layer.bounds.height / 2
    //
    //
    //        clipsToBounds = true
    //        }
    
}







//А вот это уже тень

@IBDesignable final class ShadowView: UIView {
    
    @IBInspectable var myShadowColor: UIColor = .red {
        didSet { self.updateShadowColor() }
    }
    
  
    @IBInspectable var myShadowOpacity: Float = 1.0 {
        didSet { self.updateShadowOpacity() }
    }
    
    @IBInspectable var myShadowRadius: CGFloat = 10.0 {
        didSet { self.updateShadowRadius() }
    }
    
    @IBInspectable var myShadowOffset: CGSize = CGSize(width: 10, height: 10) {
        didSet { self.updateShadowOffset() }
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // layer.shadowColor = UIColor.red.cgColor
        // layer.shadowOpacity = 1
        // layer.shadowRadius = 10
        // layer.shadowOffset = CGSize(width: 15, height: 10)
        
        //        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 0
        layer.cornerRadius = bounds.height / 2
        
        clipsToBounds = false
    }

    func updateShadowColor() {
        layer.shadowColor = myShadowColor.cgColor
    }
   
    func updateShadowOpacity() {
        layer.shadowOpacity = myShadowOpacity
    }
    
    func updateShadowRadius() {
        layer.shadowRadius = myShadowRadius
    }
    
    func updateShadowOffset() {
        layer.shadowOffset  = myShadowOffset
    }
}

