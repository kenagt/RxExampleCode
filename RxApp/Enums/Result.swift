//
//  Result.swift
//  RxApp
//
//  Created by Kenan Begić on 08/11/2019.
//  Copyright © 2019 Kenan Begić. All rights reserved.
//

import Foundation

public enum Result<ValueObject, ErrorObject> {
    case none
    case successful(ValueObject)
    case failure(ErrorObject)
    
    public var value:ValueObject? {
        switch self {
        case .successful(let obj):
            return obj
        default:
            return nil
        }
    }
    
    public var error:ErrorObject? {
        
        switch self {
        case .failure(let obj):
            return obj
        default:
            return nil
        }
    }
}
