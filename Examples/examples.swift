//
//  examples.swift
//  toDus
//
//  Created by Pedro Omar  on 5/19/26.
//

import Foundation
import SwiftUI
import Combine

// MARK: - Message Type

enum MessageType {
    case text, photo, location, contact 
}

// MARK: - MediaType

enum MediaType {
    case audio, video
}

// MARK: - Chat Request

final class ChatRequest: ObservableObject {
    @Published var messageType: MessageType = .text
    @Published var mediaType: MediaType = .audio
    @Published var user: [User] = []
}
