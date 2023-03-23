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
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var folderImage2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "folder_icon4")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var notesItemLabel: UILabel = {
        let label = UILabel()
        label.text = "Notes"
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var titleTimeSubHeadingLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, timeAndSubHeadingLabel, folderImage2OfNotesLabelStackView])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 1.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    lazy var folderImage2OfNotesLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [folderImage2, notesItemLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 1.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var detailStackView: UIStackView = {
        let stackView = UIStackView (arrangedSubviews: [titleTimeSubHeadingLabelStackView,
                                                        folderImage2OfNotesLabelStackView])
        stackView.axis = . vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 1.0
        stackView.alignment = . leading
        stackView.translatesAutoresizingMaskIntoConstraints=false
        return stackView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(folderImage2OfNotesLabelStackView)
        addSubview(titleTimeSubHeadingLabelStackView)
        addSubview(detailStackView)
        
        detailStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        detailStackView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        detailStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        detailStackView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true

        folderImage2OfNotesLabelStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        folderImage2OfNotesLabelStackView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        folderImage2OfNotesLabelStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        folderImage2OfNotesLabelStackView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        titleTimeSubHeadingLabelStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: -20).isActive = true
        titleTimeSubHeadingLabelStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleTimeSubHeadingLabelStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        titleTimeSubHeadingLabelStackView.widthAnchor.constraint(equalToConstant: 50).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
