//
//  MainButton.swift
//  ProductScreenGit
//
//  Created by Кристина on 03.04.2025.
//

import Foundation
import UIKit

class MainButton: UIButton {

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = " В корзину · 14 999 ₽"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont(name: "SFProText-Semibold", size: 15)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



    func configureUI() {

        backgroundColor = .brown
        layer.cornerRadius = 10

        addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }



    }

}
