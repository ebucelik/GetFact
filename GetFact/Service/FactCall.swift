//
//  FactCall.swift
//  GetFact
//
//  Created by Ing. Ebu Celik, BSc on 25.03.23.
//

import Foundation

struct FactCall: Call {
    let responseType = Fact.self
    let httpQuery: String = "fact"
    let httpMethod: HTTPMethod = .GET
    let parameters: [String : Any]? = ["max_length" : 100]
}

