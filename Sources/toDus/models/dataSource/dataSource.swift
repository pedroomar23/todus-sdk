//
//  dataSource.swift
//  toDus
//
//  Created by Pedro Omar  on 5/20/26.
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
