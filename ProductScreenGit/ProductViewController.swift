//
//  ProductViewController.swift
//  ProductScreenGit
//
//  Created by Кристина on 03.04.2025.
//

import UIKit
import SnapKit

class ProductViewController: UIViewController {
    
    // MARK: - UIElements
    private let sizes = ["XXS","XS", "S", "M", "L", "XL", "XXL"]
    private var selectedSize: String?
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var screenScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    private lazy var contentStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }()
    
    private lazy var itemImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Shoes")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var newImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "New")
        return image
    }()
    
    private lazy var titleStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    private lazy var titleLable: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.text = "Кожанные лоферы"
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var InfoButton: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "info.circle")
        imageView.tintColor = .gray
        imageView.contentMode = .scaleAspectFit
        return imageView
       }()
    
    private lazy var descriptionLable: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.text = "Лоферы из натуральной кожи. Фигурная союзка с фактурным швом по контуру. Зауженный мыс. Кожаная стелька и подкладка. Прорезиненная подошва. В комплект входит пыльник."
        label.numberOfLines = 0
        label.textColor = .gray
        return label
    }()
    
    private lazy var containerButtonView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: -2)
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 0.1
        return view
    }()
    
    private lazy var buyButton: MainButton = {
        let but = MainButton()
        let action = UIAction { action in
        debugPrint("Товар куплен")}
        but.addAction(action, for: .primaryActionTriggered)
        return but
    }()
    
    private lazy var borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()

    private lazy var sizeScrollView: UIScrollView = {
        let scroll = UIScrollView()
        return scroll
    }()

    private lazy var sizeContentStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 8
        return stack
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        bind(sizes: sizes)
    }
    
    // MARK: - Methods
    func bind(sizes: [String], selectedSize: String? = nil) {
        sizeContentStack.subviews.forEach { $0.removeFromSuperview() }
        sizeContentStack.subviews.forEach { sizeContentStack.removeArrangedSubview($0) }

        for size in sizes {
            let view = SizeEntityView()
            view.bind(size: size, isSelected: selectedSize == size)
            view.delegate = self
            sizeContentStack.addArrangedSubview(view)

        }

    }

}

extension ProductViewController: SizeEntityViewDelegate {

    func didSelectSize(with size: String) {
        bind(sizes: sizes, selectedSize: size)
    }

}
    
extension ProductViewController {
    
        func configureUI() {
            // MARK: - Add Views & Constraints
            // add main container
            view.addSubview(containerView)
            containerView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
            
            // add buy button container
            containerView.addSubview(containerButtonView)
            containerButtonView.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
                make.bottom.equalTo(view.safeAreaLayoutGuide)
                make.height.equalTo(126)
            }
    
            containerButtonView.addSubview(buyButton)
            buyButton.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(16)
                make.bottom.equalToSuperview().inset(8)
                make.height.equalTo(48)
            }
    
            
            containerButtonView.addSubview(borderView)
            borderView.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(16)
                make.height.equalTo(1)
                make.bottom.equalTo(buyButton.snp.top).inset(-12)
            }
            
            containerButtonView.addSubview(sizeScrollView)
            sizeScrollView.snp.makeConstraints { make in
                make.height.equalTo(34)
                make.leading.trailing.equalToSuperview().inset(16)
                make.bottom.equalTo(borderView.snp.top).inset(-12)
            }

            sizeScrollView.addSubview(sizeContentStack)
            sizeContentStack.snp.makeConstraints { make in
                make.edges.equalTo(sizeScrollView.contentLayoutGuide)
                make.height.equalTo(sizeScrollView.snp.height)
            }

            //add scroll
            containerView.addSubview(screenScrollView)
            screenScrollView.snp.makeConstraints { make in
                make.top.equalToSuperview()
                make.leading.trailing.equalToSuperview().inset(16)
                make.bottom.equalTo(containerButtonView.snp.top)
            }
            //add content view
            screenScrollView.addSubview(contentStack)
            contentStack.snp.makeConstraints { make in
                make.edges.equalTo(screenScrollView.contentLayoutGuide)
                make.width.equalTo(screenScrollView.snp.width)
            }
            //add content
            contentStack.addArrangedSubview(itemImage)
            itemImage.snp.makeConstraints { make in
                make.height.equalTo(250)
            }
    
            itemImage.addSubview(newImage)
            newImage.snp.makeConstraints { make in
                make.top.equalToSuperview().inset(16)
                make.leading.equalToSuperview()
                make.height.equalTo(24)
                make.width.equalTo(44)
            }
            
            contentStack.addArrangedSubview(titleStack)
            titleStack.snp.makeConstraints { make in
                make.height.equalTo(32)
            }
            
            titleStack.addArrangedSubview(titleLable)
            
            titleStack.addArrangedSubview(InfoButton)
            InfoButton.snp.makeConstraints { make in
                make.height.width.equalTo(32)
            }
            
            contentStack.addArrangedSubview(descriptionLable)
            

        
    
            // MARK: - Configure
    
            view.backgroundColor = .white
            
        }
    
    }
