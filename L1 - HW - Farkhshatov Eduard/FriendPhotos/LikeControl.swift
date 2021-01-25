//
//  LikeControl.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 20.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit
@available(iOS 13.0, *)
class LikeControl : UIControl {
    
    let button = UIButton()
    let label = UILabel()
    var stackView = UIStackView()
    var likeCount = 0
    var buttonIsSelected = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    @available(iOS 13.0, *)
    func setupView() {
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .lightGray
        button.addTarget(self, action: #selector(customButtonAction(_:)), for: .touchUpInside)
        label.text = "\(likeCount)"
        label.textColor = .lightGray
        
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        stackView.isLayoutMarginsRelativeArrangement = true
        self.addSubview(stackView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = bounds
    }
    
    @objc func customButtonAction(_ sender: UIButton) {
        if buttonIsSelected == false {
            button.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            button.tintColor = .red
            likeCount += 1
            label.textColor = .red
            label.text = "\(likeCount)"
            buttonIsSelected = true
        } else {
            button.setImage(UIImage(systemName: "heart"), for: .normal)
            button.tintColor = .lightGray
            likeCount -= 1
            label.textColor = .lightGray
            label.text = "\(likeCount)"
            buttonIsSelected = false
        }
    }
}
