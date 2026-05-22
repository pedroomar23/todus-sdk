//
//  chatsRequest.swift
//  toDus
//
//  Created by Pedro Omar  on 5/20/26.
//

import Foundation
import SwiftUI
import Combine

// MARK: - MessageType

public enum MessageType {
    case text, photo, location, contact
}

// MARK: - MediaType

public enum MediaType {
    case audio, video
}

// MARK: - ViewModel Chat Request

@MainActor
public final class ChatRequest: ObservableObject {
    /// - Message and Media Type
    @Published var messageType: MessageType = .text
    @Published var mediaType: MediaType = .audio
   
    /// - Messages and User
    @Published var messages = DataSource.messages
    @Published var user = DataSource.user[0]
    
    private var didChange = PassthroughSubject<Void, Never>()
    
    /// - Channels and Groups
    @Published var channel = DataSource.channels[0]
    @Published var groups = DataSource.groups[0]
    
    @Published var isLoading: Bool = false 
    
    // MARK: - Send Message
    
    public func sendMessage() {
        Task {
            switch messageType {
            case .text:
                await message(Messages(id: UUID().uuidString, kind: .text("Hello World"), user: user, date: Date()))
            case .photo:
                await message(Messages(id: UUID().uuidString, kind: .image(DataSource.mediaItem()), user: user, date: Date()))
            case .location:
                print("Hello World!")
            case .contact:
                print("Hello World!")
            }
            
            self.messageType = .text
        }
    }
    
    public func message(_ message: Messages) async {
        messages.append(message)
        didChange.send()
    }
    
    // MARK: - Send Audio and Video Message
    
    public func sendMessageAudio() {
        switch mediaType {
        case .audio:
            print("Hello World")
        case .video:
            print("Hellp World")
        }
        
        self.mediaType = .audio
    }
}
