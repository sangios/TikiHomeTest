//
//  ListKeywordsAPI.swift
//  TikiHomeTest
//
//  Created by Sang Nguyen on 3/16/19.
//  Copyright © 2019 Sang Nguyen. All rights reserved.
//

import UIKit
import ObjectMapper

extension CloudAPI {
    
    func getKeywords(completion: @escaping ([Keyword], Error?) -> Void) {
        let api = "\(host)\(API.keywords.rawValue)"
        connector.get(api, token: self.token) { (response) in
            if let error = response.error {
                completion([], error)
                return
            }
            
            switch response.code {
            case HTTPCODE.OK:
                let error = NSError(domain: CloudAPIDomain,
                                    code: HTTPCODE.BAD_CONTENT.rawValue,
                                    userInfo: nil)
                
                guard let dict = response.data as? [String: Any] else {
                    completion([], error)
                    return
                }
                guard let data = dict["keywords"] as? [Any] else {
                    completion([], error)
                    return
                }
                guard let keywords = Mapper<Keyword>().mapArray(JSONObject: data) else {
                    completion([], error)
                    return
                }
                completion(keywords, nil)
                
            default:
                let error = NSError(domain: CloudAPIDomain,
                                    code: response.code.rawValue,
                                    userInfo: nil)
                completion([], error)
            }
        }
    }
}
