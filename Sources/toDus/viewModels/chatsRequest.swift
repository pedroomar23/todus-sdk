//
//  chatRequest.swift
//
//  Copyright (c) 2026 Pedro Omar
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
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
