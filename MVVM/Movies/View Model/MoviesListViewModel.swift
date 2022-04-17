//
//  MoviesListViewModel.swift
//  MVVM
//
//  Created by Abdulrahman on 05/04/2022.
//

import Foundation
import RxCocoa
import RxSwift
import Alamofire

class MoviesListViewModel {
    
    var loadingBehavior = BehaviorRelay<Bool>(value: false)
    
    private var isTableHidden = BehaviorRelay<Bool>(value: false)
    private var moviesModelSubject = PublishSubject<[Movie]>()
    
    var moviesModelObservable: Observable<[Movie]> {
        return moviesModelSubject
    }
    var isTableHiddenObservable: Observable<Bool> {
        return isTableHidden.asObservable()
    }
    
    var title = "Movies"
    
    var coordinator: MoviesListCoordinator?
    
    func viewDidLoad(){
        getData()
    }
    
    func getData() {
        loadingBehavior.accept(true)
 
        let api: MoviesAPIProtocol = MoviesAPI()
        
        api.getMovies { [weak self](result) in
            guard let self = self else {return}
            self.loadingBehavior.accept(false)
            
            switch result {
                
            case .success(let response):

                self.moviesModelSubject.onNext(response ?? [])
                break
            case .failure(let error):
                print(error.localizedDescription)
                break
            }
        }
        
    }
    
    func selected(movie:Movie){
        coordinator?.startMovieDetails(movie: movie)
    }
    
    
   
}
