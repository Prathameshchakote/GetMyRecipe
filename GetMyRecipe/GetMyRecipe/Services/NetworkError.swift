//
//  NetworkError.swift
//  GetMyRecips
//
//  Created by Prathamesh on 2/3/25.
//

import Foundation

enum NetworkError: Error, Equatable {
    case invalidURL
    case invalidResponse
    case decodingError
    case serverError(Int)
}
