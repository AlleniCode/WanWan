//
//  Request.swift
//  WanWanCore
//
//  Created by 张玉涛 on 2020/8/2.
//  Copyright © 2020 Wanwan. All rights reserved.
//

import Foundation
import Alamofire

enum RequestType {
    case GET
    case POST
}

class Request {
    static let sharedInstance = Request()
    private init() {}
    
    func request(type: RequestType, url: String, headers: Dictionary<String, Any>?, parameters: Dictionary<String, Any>?, success: @escaping ((Any) -> Void)) {
        switch type {
        case .GET:
            AF.request(url, method: .get, parameters: parameters).responseJSON { (response) in
                print(response)
                switch response.result {
                case .success(let data):
                    print(data)
                case .failure(let error):
                    print(error.errorDescription!)
                    print(error.responseCode!)
                }
            }
        case .POST:
            AF.request(url, method: .post, parameters: parameters).responseJSON { (response) in
                print(response)
                switch response.result {
                case .success(let data):
                    print(data)
                case .failure(let error):
                    print(error.errorDescription!)
                }
            }
        }
    }
}
