//
//  mediaItem.swift
//  toDus
//
//  Created by Pedro Omar  on 5/20/26.
//

import Foundation
import SwiftUI

public protocol MediaItem {
    /// - A protocol is used to represent the data for a media message
    /// - The url with the media is located
    var url: URL? { get }
    
    /// - The image when is located
    var image: Image { get }
    
    /// - A placeholder image when the image is obtained asynchnously
    var placeholderImage: Image { get }
    
    /// - A size for width and height of the image
    var size: CGSize { get }
}
