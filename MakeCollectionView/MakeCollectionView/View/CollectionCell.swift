//
//  CollectionCell.swift
//  MakeCollectionView
//
//  Created by 오국원 on 2022/04/19.
//

import UIKit

class CollectionCell:UICollectionViewCell {
    //MARK: -Properties
    var item:String? {
        didSet {
            self.label.text = item
        }
    }
    
    lazy var label:UILabel = {
       let label = UILabel()
        return label
    }()
    
    //MARK: -init
    override init(frame: CGRect) {
        super .init(frame: frame)
        configures()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -Configures
    func configures(){
        backgroundColor = .systemRed
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
