//
//  CarsView.swift
//  AppCarros
//
//  Created by Diego on 31/10/22.
//

import UIKit

final class CarsView: UIView {
    
    lazy var backGround = ImageViewDefault(text: "5")
    
    lazy var backTitle = ImageViewDefault(backgroundColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 1),cornerRadius: 30, maskedCorners: [.layerMinXMaxYCorner, .layerMaxXMaxYCorner])
    
    lazy var tableView: UITableView = {
        let tb = UITableView(frame: .zero, style: .plain)
        tb.backgroundColor = .clear
        tb.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        tb.clipsToBounds = true
        tb.register(CellCar.self, forCellReuseIdentifier: CellCar.identifier)
        tb.selectionFollowsFocus = false
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        constraintsCars()
        backgroundColor = .clear

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupTablevieweProtocool(datasource: UITableViewDataSource, delegate: UITableViewDelegate) {
        self.tableView.dataSource = datasource
        self.tableView.delegate = delegate
        
    }
    
    func addView() {
        self.addSubview(backGround)
        self.addSubview(tableView)
        self.addSubview(backTitle)
    }
    
    func constraintsCars() {
        NSLayoutConstraint.activate([
            
            backGround.topAnchor.constraint(equalTo: topAnchor),
            backGround.leadingAnchor.constraint(equalTo: leadingAnchor),
            backGround.trailingAnchor.constraint(equalTo: trailingAnchor),
            backGround.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backTitle.topAnchor.constraint(equalTo: topAnchor),
            backTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            backTitle.widthAnchor.constraint(equalTo: widthAnchor),
            backTitle.heightAnchor.constraint(equalToConstant: 140),
            
            tableView.topAnchor.constraint(equalTo: backTitle.bottomAnchor,constant: 10),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
