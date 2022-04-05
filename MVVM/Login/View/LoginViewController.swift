//
//  LoginViewController.swift
//  MVVM
//
//  Created by Abdulrahman on 04/04/2022.
//

import UIKit
import RxCocoa
import RxSwift

class LoginViewController: UIViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    var viewModel: LoginViewModel!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.navigationController?.navigationBar.isHidden = true
        bindTextFieldsToViewModel()
        subscribeToLoading()
        subscribeToResponse()
        subscribeIsLoginEnabled()
        subscribeToLoginButton()
        
    }
    
    
    
    func subscribeToLoading() {
        viewModel.loadingBehavior.subscribe(onNext: { [weak self] (isLoading) in
            guard let self = self else {return}
            if isLoading {
                self.showIndicator(withTitle: "", and: "")
            } else {
                self.hideIndicator()
            }
        }).disposed(by: disposeBag)
    }
    
    
    func bindTextFieldsToViewModel(){
        
        phoneTextField.rx.text.orEmpty.bind(to: viewModel.phoneBehavior).disposed(by: disposeBag)
        passTextField.rx.text.orEmpty.bind(to: viewModel.passBehavior).disposed(by: disposeBag)
        
    }
    
    func subscribeToResponse() {
        viewModel.loginModelObservable.subscribe(onNext: {[weak self] _ in
            //TODO: make sure response is true
            guard let self = self else {return}
            self.viewModel.goToMovieList()
        }).disposed(by: disposeBag)
    }
    
    
    func subscribeToLoginButton() {
        loginButton.rx.tap
            .throttle(RxTimeInterval.milliseconds(500), scheduler: MainScheduler.instance)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else { return }
                self.viewModel.goToMovieList() //MARK: for test
//                self.viewModel.getData()
            }).disposed(by: disposeBag)
    }
    
    func subscribeIsLoginEnabled() {
        viewModel.isLoginButtonEnapled.bind(to: loginButton.rx.isEnabled).disposed(by: disposeBag)
    }
    
    
}



