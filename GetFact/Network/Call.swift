//
//  Call.swift
//  GetFact
//
//  Created by Ing. Ebu Celik, BSc on 25.03.23.
//

import Foundation

public protocol Call where Self.Response: Codable {
    associatedtype Response

    var responseType: Response.Type { get }
    var httpScheme: String { get }
    var httpQuery: String { get }
    var httpMethod: HTTPMethod { get }
    var parameters: [String : Any]? { get }
    var body: Codable? { get }
}

extension Call {
    var httpScheme: String { "https://catfact.ninja/" }
    var parameters: [String : Any]? { nil }
    var body: Codable? { nil }
}
