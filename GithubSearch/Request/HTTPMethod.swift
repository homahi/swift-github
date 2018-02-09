//
//  HTTPMethod.swift
//  GithubSearch
//
//  Created by 原野誉大 on 2018/02/09.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case head = "HEAD"
    case delete = "DELETE"
    case patch = "PATCH"
    case trace = "TRACE"
    case options = "OPTIONS"
    case connect = "CONNECT"
}
