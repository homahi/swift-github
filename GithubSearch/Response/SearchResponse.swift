//
//  SearchResponse.swift
//  GithubSearch
//
//  Created by 原野誉大 on 2018/02/09.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

struct SearchResponse<Item : Decodable> : Decodable {
    let totalCount:Int
    let items: [Item]
    
    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
