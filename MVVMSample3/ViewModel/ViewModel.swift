//
//  ViewModel.swift
//  MVVMSample3
//
//  Created by 鈴木楓香 on 2023/02/06.
//

import Foundation
import RxSwift

class ViewModel {
    
    var helloWorlsObserver: Observable<String> {
        return helloWorldSubject.asObserver()
    }
    
    private let helloWorldSubject = PublishSubject<String>()
    
    func updateItem() {
        helloWorldSubject.onNext("Hello World!")
        helloWorldSubject.onCompleted()
    }
    
}
