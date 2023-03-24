//
//  FoldersTableViewCells.swift
//  NavScreenProject
//
//  Created by Reuben Simphiwe Kuse on 2023/03/23.
//

import UIKit

class FoldersTableViewCells: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "All iCloud"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var folderImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "folder_icon3")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var forwardArrowImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "next_right_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var numberOfItemsLabel: UILabel = {
        let label = UILabel()
        label.text = "33"
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var titleNumberOfItemsLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, numberOfItemsLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(folderImage)
        addSubview(titleNumberOfItemsLabelStackView)
        addSubview(forwardArrowImage)
        
        folderImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
        folderImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
        folderImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        folderImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true

        forwardArrowImage.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        forwardArrowImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        forwardArrowImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
        forwardArrowImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        titleNumberOfItemsLabelStackView.leftAnchor.constraint(equalTo: folderImage.rightAnchor, constant: 16).isActive = true
        titleNumberOfItemsLabelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleNumberOfItemsLabelStackView.rightAnchor.constraint(equalTo: forwardArrowImage.leftAnchor, constant: -16).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
