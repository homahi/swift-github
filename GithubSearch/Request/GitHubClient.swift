//
//  GitHubClient.swift
//  GithubSearch
//
//  Created by 原野誉大 on 2018/02/09.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

class GitHubClient {
    private let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        return session
    }()
    
    func send<Request : GitHubClient>(
        request: Request,
        completion: (Result<Request.Response, GitHubClientError>) -> Void){
        
    }
}
