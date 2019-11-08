//
//  ViewController.swift
//  RxApp
//
//  Created by Kenan Begić on 08/11/2019.
//  Copyright © 2019 Kenan Begić. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    var posts: [PostModel] = []
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let client = APIClient.shared
        
        do{
            try client.getRecipes().subscribe(
                onNext: { result in
                    self.posts = result
                    //MARK: display in UITableView
                },
                onError: { error in
                    print(error.localizedDescription)
                },
                onCompleted: {
                    print("Completed event.")
                }).disposed(by: disposeBag)
        }
        catch{
            
        }
    }
}

