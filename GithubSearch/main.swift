//
//  main.swift
//  GithubSearch
//
//  Created by 原野誉大 on 2018/02/09.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

print("Enter your query here >", terminator: "")

guard let keyword = readLine(strippingNewline: true) else {
    exit(1)
}

// APIクライアントの生成
let client = GitHubClient()

let request = GitHubAPI.SearchRepositories(body: nil, keyword: keyword)


// リクエストの送信

client.send(request: request) { result in
    switch result {
    case let .success(response):
        for item in response.items {
           print(item.owner.login + "/" + item.name)
        }
        exit(0)
    case let .failure(error):
        print(error)
        exit(1)
    }
}


let timeoutInterval: TimeInterval = 60

Thread.sleep(forTimeInterval: timeoutInterval)

print("Connection timeout")
exit(1)
