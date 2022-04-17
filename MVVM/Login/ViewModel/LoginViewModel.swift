//
//  AppDelegate.swift
//  MVVM
//
//  Created by Abdulrahman on 04/04/2022.
//

import Foundation
import RxSwift
import RxCocoa
import Alamofire

class LoginViewModel {
    
    var phoneBehavior   = BehaviorRelay<String>(value: "")
    var passBehavior    = BehaviorRelay<String>(value: "")
    var loadingBehavior = BehaviorRelay<Bool>(value: false)
    
    private var loginModelSubject = PublishSubject<LoginModel>()
    
    var loginModelObservable: Observable<LoginModel> {
        return loginModelSubject
    }
    
    var isPhoneValid: Observable<Bool> {
        return phoneBehavior.asObservable().map { (phone) -> Bool in
            let isPhoneEmpty = phone.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
            
            return !isPhoneEmpty
        }
    }
    
    var isPassValid: Observable<Bool> {
        return passBehavior.asObservable().map {(pass) -> Bool in
            let isPassValid = pass.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
            return !isPassValid
        }
    }
    
    
    var isLoginButtonEnapled: Observable<Bool> {
        return Observable.combineLatest(isPhoneValid, isPassValid) { (isPhoneValid, isPassValid) in
            
            return isPhoneValid && isPassValid
        }
    }
    
    var isLogin = BehaviorRelay<Bool>(value: false)
    
    
    var coordinator: LoginCoordinator?
    
    func getData() {
        loadingBehavior.accept(true)
 
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {[weak self] _ in
            guard let self = self else {return}
           
            if self.phoneBehavior.value == "Abdo" && self.passBehavior.value == "123"{
                self.isLogin.accept(true)
                self.loadingBehavior.accept(false)
            }else{
                self.isLogin.accept(false)
                self.loadingBehavior.accept(false)
                
            }
            
        }
        
//        MARK: if network exist
//        let info : [String:Any] = [
//            "mobile"      : phoneBehavior.value,
//            "password"    : passBehavior.value,
//
//        ]
//
//        let api: AuthAPIProtocol = AuthAPI()
//        api.login(info: info) { [weak self] (result) in
//            guard let self = self else {return}
//            self.loadingBehavior.accept(false)
//            switch result {
//
//            case .success(let response):
//                print(response!)
//                break
//            case .failure(let error):
//                print(error.localizedDescription)
//                break
//            }
//        }
        
        
        
        
    }
    
    func goToMovieList(){
        coordinator?.startMovieList()
    }
}
