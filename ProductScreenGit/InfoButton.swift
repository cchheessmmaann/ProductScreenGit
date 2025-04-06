//
//  InfoButton.swift
//  ProductScreenGit
//
//  Created by Кристина on 03.04.2025.
//

import Foundation
import UIKit

class InfoButton: UIButton {

    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "InfoButton")
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureUI() {

        addSubview(image)
        image.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

    }

}
