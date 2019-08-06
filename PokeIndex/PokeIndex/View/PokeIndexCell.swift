//
//  PokerTestCell.swift
//  PokeTest
//
//  Created by Elizeu RS on 31/07/19.
//  Copyright © 2019 elizeurs. All rights reserved.
//

import UIKit

class PokeIndexCell: UICollectionViewCell {
  
  //  MARK: - Properties
  
  var pokemon: Pokemon? {
    didSet {
      nameLabel.text = pokemon?.name?.capitalized
      imageView.image = pokemon?.image
    }
  }
  
  let imageView: UIImageView = {
    let iv = UIImageView()
    iv.backgroundColor = .groupTableViewBackground
    iv.contentMode = .scaleAspectFit
    return iv
  }()
  
  lazy var nameContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .mainGray()
    
    view.addSubview(nameLabel)
    nameLabel.center(inView: view)
    
    return view
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 16)
    label.text = "Bulbasaur"
    return label
  }()
  
  
  //  MARK: - Init
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    configureViewComponents()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //  MARK: - Helper Functions
  
  func configureViewComponents() {
    self.layer.cornerRadius = 10
    self.clipsToBounds = true
    
    addSubview(imageView)
    imageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBotton: 0, paddingRight: 0, width: 0, height: self.frame.height - 32)
    
    addSubview(nameContainerView)
    nameContainerView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBotton: 0, paddingRight: 0, width: 0, height: 32)
  }
}
