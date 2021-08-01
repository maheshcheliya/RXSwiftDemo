//
//  ViewController.swift
//  RXSwiftDemo
//
//  Created by Mahesh on 01/08/21.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    private var viewModel : RestaurantListViewModel!

    @IBOutlet weak var tableview: UITableView!
    
    static func instantiate(viewModel : RestaurantListViewModel) -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        viewController.viewModel = viewModel
        
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableview.tableFooterView = UIView()
        
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
        tableview.contentInsetAdjustmentBehavior = .never
        fetchData()
    }
    
    func fetchData() {
        viewModel.fetchRestaurantsViewModels().observe(on: MainScheduler.instance).bind(to: tableview.rx.items(cellIdentifier: "cell")) {
            index, viewModel, cell in
            
            cell.textLabel?.text = viewModel.displayText
        }.disposed(by: disposeBag)
    }
}
