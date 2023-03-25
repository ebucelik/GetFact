//
//  FactServiceProtocol.swift
//  GetFact
//
//  Created by Ing. Ebu Celik, BSc on 25.03.23.
//

import Foundation

protocol FactServiceProtocol {
    func getRandomFact() async throws -> Fact
}
