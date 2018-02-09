//
//  GitHubClientError.swift
//  GithubSearch
//
//  Created by 原野誉大 on 2018/02/09.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

enum GitHubClientError: Error {
    // 通信に失敗
    case connectionError(Error)
    
    // レスポンスの解釈に失敗
    case responseParseError(Error)
    
    // APIからエラーレスポンスを受け取った
    case apiError(GitHubAPIError)
}
