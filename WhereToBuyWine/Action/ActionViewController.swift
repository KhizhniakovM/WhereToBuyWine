//
//  ActionViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 26.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit
import Combine

class ActionViewController: UIViewController {
    // MARK: - Properties
    private var viewModel: ActionViewModel?
    weak var coordinator: ActionCoordinator?
    
    var subscribers = Set<AnyCancellable>()
    var wine: Wine?
    
    // MARK: - UI
    lazy var photo: UIImageView = {
        let photo = UIImageView()
        photo.translatesAutoresizingMaskIntoConstraints = false
        photo.backgroundColor = .white
        return photo
    }()
    
    lazy var type: UIImageView = .customCircleView(color: .green)
    lazy var color: UIImageView = .customCircleView(color: .red)
    lazy var rating: UIImageView = .customCircleView(color: .white)
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [type, color, rating])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .center
        stack.spacing = 10
        stack.distribution = .fillEqually
        stack.axis = .vertical
        return stack
    }()
    
    lazy var name: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .green
        return textField
    }()
    
    // MARK: - Initializers
    init(viewModel: ActionViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        setupView()
        addCombine()
    }
    
    // MARK: - Methods
    private func setupView() {
        self.view.addSubview(photo)
        self.view.addSubview(stack)
        self.view.addSubview(name)
        
        rating.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.save(_:))))
        
        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40),
            photo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            photo.trailingAnchor.constraint(equalTo: stack.leadingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40),
            stack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            stack.heightAnchor.constraint(equalTo: photo.heightAnchor),
            stack.widthAnchor.constraint(equalTo: photo.widthAnchor, constant: -100),
            photo.heightAnchor.constraint(equalToConstant: 300),
            
            name.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 40),
            name.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            name.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
            name.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40),
        ])
    }
    
    private func addCombine() {
        _ = NotificationCenter.default
            .publisher(for: UITextField.textDidChangeNotification, object: name)
            .map({ ($0.object as! UITextField).text!.count })
            .sink { (notification) in
                if notification > 4 {
                    self.rating.backgroundColor = .green
                    self.rating.isUserInteractionEnabled = true
                } else {
                    self.rating.backgroundColor = .white
                    self.rating.isUserInteractionEnabled = false
                }
        }
        .store(in: &subscribers)
    }
    
    @objc
    private func save(_ sender: UITapGestureRecognizer) {
        print("Save wine...")
    }
}
