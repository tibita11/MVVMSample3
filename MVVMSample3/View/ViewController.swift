//
//  ViewController.swift
//  MVVMSample3
//
//  Created by 鈴木楓香 on 2023/02/06.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    private let disposeBag = DisposeBag()
    private var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
        viewModel.helloWorlsObserver
            .subscribe (onNext: { [weak self] message in
                self!.titleLabel.text = message
            }, onCompleted: {
                print("completed")
            })
            .disposed(by: disposeBag)
        
        viewModel.updateItem()
    }
    
    
}

