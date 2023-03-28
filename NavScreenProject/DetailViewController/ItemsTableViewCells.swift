//
//  ItemsTableViewCells.swift
//  NavScreenProject
//
//  Created by Reuben Simphiwe Kuse on 2023/03/23.
//

import UIKit

class ItemsTableViewCells: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Import Foundation"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeAndSubHeadingLabel: UILabel = {
        let label = UILabel()
        label.text = "09:16 import UIKit"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var titleTimeSubHeadingLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, timeAndSubHeadingLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 1.0
        stackView.backgroundColor = .red
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    ///////////
    
    lazy var folderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "folder_icon4")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var notesLabel: UILabel = {
        let label = UILabel()
        label.text = "Ndalo: Age 6"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var folderImageNotesLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [notesLabel, folderImageView])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 3.0
        stackView.alignment = .center
        stackView.backgroundColor = .green
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var detailStackView: UIStackView = {
        let arrayOfStackView = [folderImageNotesLabelStackView, titleTimeSubHeadingLabelStackView]
        
        
        let stackView = UIStackView(arrangedSubviews: arrayOfStackView)
        stackView.axis = . vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 1.0
        stackView.backgroundColor = .blue
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints=false
        return stackView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(detailStackView)
        
        detailStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        detailStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        detailStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        
        folderImageNotesLabelStackView.rightAnchor.constraint(equalTo: rightAnchor,
                                                            constant: -20).isActive = true
        
        folderImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        folderImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
