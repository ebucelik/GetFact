//
//  HTTPError.swift
//  GetFact
//
//  Created by Ing. Ebu Celik, BSc on 25.03.23.
//

import Foundation

public enum HTTPError: Error {
    case notFound, unauthorized, unexpectedError
}
