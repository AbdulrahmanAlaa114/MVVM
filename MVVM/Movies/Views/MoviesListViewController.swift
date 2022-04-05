//
//  MoviesListViewController.swift
//  MVVM
//
//  Created by Abdulrahman on 05/04/2022.
//

import UIKit
import RxCocoa
import RxSwift

class MoviesListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var moviesContainerView: UIView!
    var viewModel: MoviesListViewModel!
    let disposeBag = DisposeBag()
    
    
    let movieTableViewCell = "MovieTableViewCell"
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = false
        self.title = viewModel.title
        
        subscribeToMoviesSelection()
        setupTableView()
        bindToHiddenTable()
        subscribeToLoading()
        subscribeToResponse()
        getMovies()
        
    }
    func setupTableView() {
        tableView.register(UINib(nibName: movieTableViewCell, bundle: nil), forCellReuseIdentifier: movieTableViewCell)
    }
    func bindToHiddenTable() {
        viewModel.isTableHiddenObservable.bind(to: self.moviesContainerView.rx.isHidden).disposed(by: disposeBag)
    }
    func subscribeToLoading() {
        viewModel.loadingBehavior.subscribe(onNext: { (isLoading) in
            if isLoading {
                self.showIndicator(withTitle: "", and: "")
            } else {
                self.hideIndicator()
            }
        }).disposed(by: disposeBag)
    }
    func subscribeToResponse() {
        self.viewModel.moviesModelObservable
            .bind(to: self.tableView
                .rx
                .items(cellIdentifier: movieTableViewCell,
                       cellType: MovieTableViewCell.self)) { row, movie, cell in
                        print(row)
                        cell.textLabel?.text = movie.title
        }
        .disposed(by: disposeBag)
    }
    func subscribeToMoviesSelection() {
        Observable
            .zip(tableView.rx.itemSelected, tableView.rx.modelSelected(Movie.self))
            .bind {  selectedIndex, movie in
                
                print(selectedIndex, movie.title )
        }
        .disposed(by: disposeBag)
    }
    func getMovies() {
        viewModel.getData()
    }


}
