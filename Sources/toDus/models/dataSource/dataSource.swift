//
//  dataSource.swift
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

// MARK: - Source Examples

@MainActor
struct DataSource {
    /// - User Dates in the app
    static var user = [
        User(id: UUID(), name: "Juan", avatar: "😃", isUser: true),
        User(id: UUID(), name: "Jorge", avatar: "😃", isUser: true),
        User(id: UUID(), name: "Carlos", avatar: "😃", isUser: true),
        User(id: UUID(), name: "Jose", avatar: "😃", isUser: true),
        User(id: UUID(), name: "Pedro", avatar: "😃", isUser: true)
    ]
    
    /// - Messages Examples
    static var messages = [
        Messages(id: UUID().uuidString, kind: .text("Hola"), user: DataSource.user[0], date: Date()),
        Messages(id: UUID().uuidString, kind: .text("Como estas"), user: DataSource.user[1], date: Date()),
        Messages(id: UUID().uuidString, kind: .text("Bien"), user: DataSource.user[0], date: Date()),
        Messages(id: UUID().uuidString, kind: .image(mediaItem()), user: user[0] , date: Date()),
        Messages(id: UUID().uuidString, kind: .text("Como sigues"), user: me , date: Date()),
        Messages(id: UUID().uuidString, kind: .text("Vamos a la escuela"), user: you , date: Date()),
        Messages(id: UUID().uuidString, kind: .image(mediaItem()), user: user[0] , date: Date()),
        Messages(id: UUID().uuidString, kind: .text("LLegamos"), user: user[1] , date: Date())
    ]
    
    ///  - Message me and you
    static let me = DataSource.user[0]
    static let you = DataSource.user.last!
    
    /// - Image Media Item
    static func mediaItem() -> MediaItem {
        let imageMedia = MediaRow(url: URL(string: "url"), image: Image("img-msp5"), placeholderImage: Image("img-msp5"))
        return imageMedia
    }
    
    /// - Groups and Channels
    static var groups = [
        Groups(name: "Test New Group", image: .image(mediaItem()), description: "Grupo Personal"),
        Groups(name: "Tegnology Group", image: .image(mediaItem()), description: "This is my tegnology group")
    ]
    
    static var channels = [
        Channels(name: "Test New Channel", image: .image(mediaItem()), description: "This is my personal channel")
    ]
}
