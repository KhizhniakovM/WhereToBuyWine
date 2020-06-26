//
//  TableOfShopsViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 26.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class TableOfShopsViewController: UIViewController {
    // MARK: - Main Properties
    private var viewModel: TableOfShopsViewModel?
    weak var coordinator: MapCoordinator?
    
    // MARK: - UI
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: self.view.bounds,
                                              collectionViewLayout: createLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .white
        return collectionView
    }()

    
    // MARK: - Initializers
    init(viewModel: TableOfShopsViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        setupView()
    }

    // MARK: - Methods
    private func setupView() {
        self.view.addSubview(collectionView)

    }
    
    private func createLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 10, leading: 10, bottom: 10, trailing: 10)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                               heightDimension: .absolute(44))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
}



