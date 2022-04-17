//
//  MovieDetailsViewController.swift
//  MVVM
//
//  Created by Abdulrahman on 05/04/2022.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

class MovieDetailsViewController: UIViewController {

    
    var viewModel: MovieDetailsViewModel!
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        
        setupData()
        subscribeToLoginButton()
    }
    
    
    
    
    
    func setupData(){
        
        
        let url = URL(string: viewModel.movieDetails.image)
        let processor = DownsamplingImageProcessor(size: movieImg.bounds.size)
                     |> RoundCornerImageProcessor(cornerRadius: 20)
        movieImg.kf.indicatorType = .activity
        movieImg.kf.setImage(
            with: url,
            placeholder: UIImage(named: "placeholderImage"),
            options: [
                .processor(processor),
//                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
//        {
//            result in
//            switch result {
//            case .success(let value):
//                print("Task done for: \(value.source.url?.absoluteString ?? "")")
//            case .failure(let error):
//                print("Job failed: \(error.localizedDescription)")
//            }
//        }
        movieTitle.text = viewModel.movieDetails.title
    }
    
    func subscribeToLoginButton() {
        backBtn.rx.tap
            .throttle(RxTimeInterval.milliseconds(500), scheduler: MainScheduler.instance)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else { return }
                self.viewModel.viewDidDisappear()
                self.dismiss(animated: true, completion: nil)
            }).disposed(by: disposeBag)
    }
    
    

   
}
