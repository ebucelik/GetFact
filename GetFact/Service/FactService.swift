//
//  FactService.swift
//  GetFact
//
//  Created by Ing. Ebu Celik, BSc on 25.03.23.
//

import Foundation

public class FactService: APIClient, FactServiceProtocol {

    override init() { super.init() }

    func getRandomFact() async throws -> Fact {
        let call = FactCall()

        return try await start(call: call)
    }
}
