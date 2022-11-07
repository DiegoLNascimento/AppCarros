//
//  CarsController.swift
//  AppCarros
//
//  Created by Diego on 31/10/22.
//

import UIKit

class CarsController: UIViewController {
    
    var custonCars: CarsView?
    let controller = ControlleCars()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonCars()
        request()
        setTableView()
        setupNavibar()
        setButtonBar()
    }
    
    func setupNavibar() {
        navigationController?.navigationBar.backgroundColor = .clear
        self.navigationItem.title = "List of Cars"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Light", size: 30 )!]
    }
    
    func setButtonBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(buttonExit))
        
    }
    
    @objc public func buttonExit( _ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func setCustonCars() {
        custonCars = CarsView()
        view = custonCars
    }
    
    func request() {
        controller.requestCars { [weak self] sucess in
            if sucess {
                self?.custonCars?.tableView.reloadData()
            }
        }
    }
    
    func setTableView() {
        custonCars?.setupTablevieweProtocool(datasource: self, delegate: self)
    }
}

extension CarsController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellCar.identifier, for: indexPath) as? CellCar
        
        cell?.layer.backgroundColor = UIColor.clear.cgColor
        
        cell?.carCell(resultCar: controller.getIndexPath(indexpath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}

extension CarsController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Cars = DetailController()
        
        Cars.controller.carDetail = controller.getIndexPath(indexpath: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        
        self.navigationController?.pushViewController(Cars, animated: true)
    }
}
