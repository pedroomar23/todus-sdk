//
//  user.swift
//  toDus
//
//  Created by Pedro Omar  on 5/19/26.
//

import Foundation

public struct User: Hashable, Identifiable {
    public var id = UUID()
    public var name: String
    public var avatar: String
    public var isUser: Bool
}
