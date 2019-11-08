//
//  RecipeModel.swift
//  RxApp
//
//  Created by Kenan Begić on 08/11/2019.
//  Copyright © 2019 Kenan Begić. All rights reserved.
//

import Foundation

//MARK: RecipeModel
public struct PostModel: Codable {
    private var id: Int
    private var userId: Int
    private var title: String
    private var body: String
    
    init(id: Int, userId: Int, title: String, body: String) {
        self.id = id
        self.userId = userId
        self.title = title
        self.body = body
    }
    
    func getId() -> Int {
        return self.id
    }
    
    func getUserId() -> Int {
        return self.userId
    }
    
    func getTitle() -> String {
        return self.title
    }
    func getBody() -> String {
        return self.body
    }
}
