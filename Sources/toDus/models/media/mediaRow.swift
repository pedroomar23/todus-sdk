//
//  mediaRow.swift
//  toDus
//
//  Created by Pedro Omar  on 5/21/26.
//

import Foundation
import SwiftUI

public struct MediaRow: MediaItem {
    public var url: URL?
    public var image: Image
    public var placeholderImage: Image
    public var size: CGSize {
        return CGSize(width: 250, height: 250)
    }
}


