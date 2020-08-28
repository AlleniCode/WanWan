//
//  WWApi.swift
//  WanWanCore
//
//  Created by 张玉涛 on 2020/8/2.
//  Copyright © 2020 Wanwan. All rights reserved.
//

import Foundation
import Alamofire

let baseURL = "https://imwanwan.com/api"

class WWApi {
    //func postRequest(urlStr:String, parameters:Parameters, finishCallBack:@escaping(_ responseObject:AnyObject?, _ error:Error?) -> ())
    
    static func getVerificationCode(phone: String, result: @escaping ((_ data: Any, _ error: (errorCode: Int, errorMessage: String)) -> Void)) {
        let url = baseURL + "/ucenter/user/getSmsVerificationCode"
        Request.sharedInstance.request(type: .POST, url: url, headers: nil, parameters: ["phone": phone]) { (result) in
            print(result)
        }
    }
}
