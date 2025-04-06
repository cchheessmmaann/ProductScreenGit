//
//  SizeEntityView.swift
//  ProductScreenGit
//
//  Created by Кристина on 07.04.2025.
//

import UIKit


protocol SizeEntityViewDelegate: AnyObject {

    func didSelectSize(with size: String)

}
class SizeEntityView: UIView  {
    // MARK: - Private Properties

    weak var delegate: SizeEntityViewDelegate?
    private var size: String?
    
    // MARK: - UIElements
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 17
        view.backgroundColor = .lightGray
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap)))
        return view
    }()
    
    private lazy var textStackView: UIView = {
        let stack = UIStackView(arrangedSubviews: [titleLabel])
        stack.axis = .horizontal
        stack.spacing = 8
        return stack
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.text = "Size"
        label.textColor = UIColor(named: "Dark")
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
      }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      }
    
    // MARK: - Configure UI
    
    private func configureUI() {
        addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(34)
        }
        
        containerView.addSubview(textStackView)
        textStackView.snp.makeConstraints {make in
            make.leading.trailing.equalToSuperview().inset(18)
            make.bottom.top.equalToSuperview().inset(8.5)
        }
        
    }
    
    // MARK: - Methods
    
    func bind(size: String, isSelected: Bool) {
            self.size = size
            titleLabel.text = size
            containerView.backgroundColor = isSelected ? UIColor(named: "Brown") : UIColor(named: "LightGray")
            titleLabel.textColor = isSelected ? .white : .black
        }
    // MARK: - Actions

    @objc private func didTap() {
        guard let size else { return }
        delegate?.didSelectSize(with: size)
    }
}
