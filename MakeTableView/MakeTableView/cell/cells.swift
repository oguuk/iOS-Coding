//
//  cells.swift
//  MakeTableView
//
//  Created by 오국원 on 2022/04/19.
//

import UIKit

class cells: UIView {
    private let textLabel: UILabel = {
        let textlabel = UILabel()
        return textlabel
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
