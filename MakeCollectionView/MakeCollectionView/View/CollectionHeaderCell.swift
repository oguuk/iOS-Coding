//
//  CollectionHeaderCell.swift
//  MakeCollectionView
//
//  Created by 오국원 on 2022/04/20.
//

import UIKit

class CollectionHeaderCell:UICollectionReusableView { //CollectionViewCell도 가능 둘 중 아무거나
    
    //MARK: - Properties
    lazy var label:UILabel = {
       let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 50)
        label.text = "Header"
        return label
    }()
    
    //MARK: -Lifecycle
    override init(frame: CGRect) {
        super .init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -Configures
    func configure() {
        backgroundColor = .systemBackground
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}
