//
//  Hint.swift
//
//  Created by Waqar Malik on 2/20/23.
//

import Foundation

@frozen
public struct Hint: Codable, Hashable, Sendable {
    public let property: String?
    public let value: String?
}
