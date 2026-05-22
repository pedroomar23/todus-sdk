//
//  groups.swift
//  toDus
//
//  Created by Pedro Omar  on 5/19/26.
//

import Foundation
import SwiftUI

public struct Groups: Identifiable {
    public let id = UUID()
    public let name: String
    public let image: Media
    public let description: String 
}


