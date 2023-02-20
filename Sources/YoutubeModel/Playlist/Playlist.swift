//
//  Playlist.swift
//
//  Created by Waqar Malik on 2/20/23.
//

import Foundation

public struct Playlist: Codable, Hashable, Identifiable, Sendable {
    public let id: String
    public let etag: String
    public let kind: String
    public let snippet: Snippet.Playlist?
    public let status: PlaylistsStatus?
}