//
//  SimpleTextTableViewCell.swift
//  UIKitExample
//
//  Created by AngaoTu on 2022/1/6.
//

import UIKit
import SnapKit

class SimpleTextTableViewCell: UITableViewCell {

    var textString: String? {
        didSet {
            guard let text = textString else {
                titleLabel.text = ""
                return
            }
            apply(text: text)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(15)
            make.centerY.equalToSuperview()
            make.right.equalTo(-15)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func apply(text: String) {
        titleLabel.text = text
    }
    
    private lazy var titleLabel: UILabel = {
        let temp = UILabel()
        temp.font = UIFont.systemFont(ofSize: 15.0, weight: .semibold)
        temp.textColor = .black
        temp.numberOfLines = 0
        return temp
    }()
}

