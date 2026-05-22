//
//  messages.swift
//  toDus
//
//  Created by Pedro Omar  on 5/19/26.
//

import Foundation

public struct Messages: Identifiable {
    public static func == (lhs: Messages, rhs: Messages) -> Bool {
        return lhs.id == rhs.id
    }
    
    public let id: String
    public var kind: Media
    public let user: User
    public let date: Date
}
