//
//  Comment.swift
//
//  Created by Waqar Malik on 2/20/23.
//

import Foundation

@frozen
public struct Comment: Codable, Hashable, Identifiable, Sendable {
    public let id: String
    public let etag: String
    public let kind: String
    public let snippet: Snippet.Comment
}
