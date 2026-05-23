//
//  dateHelper.swift
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

public class DataHelper: @unchecked Sendable {
    /// - Singlenton Patron
    static let shared = DataHelper()
    
    /// - Date and Time Style at the message
    static let formatter: DateFormatter = {
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    /// - Return short time
    /// - Date and time style
    static func getDateWith(timeInterval: Int64) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(timeInterval))
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a"
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
    
    /// - Return Custom Time
    /// - Time Interval and Date Formatter
    static func dateWith(
        timeInterval: Int64,
        dateFormat: String = "h:mm a",
        dateStyle: DateFormatter.Style = .none,
        timeStyle: DateFormatter.Style = .none,
        relativeDate: Bool = false
    ) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(timeInterval))
        let formatter = DateFormatter()
        
        if Calendar.current.isDateInToday(date) || Calendar.current.isDateInYesterday(date) {
            formatter.dateStyle = .short
            formatter.timeStyle = .short
        } else {
            formatter.dateFormat = dateFormat
            formatter.doesRelativeDateFormatting = relativeDate
            
            if dateStyle == .none {
                formatter.dateStyle = dateStyle
            }
            if timeStyle == .none {
                formatter.timeStyle = timeStyle
            }
        }
        
        return formatter.string(from: date)
    }
    
    /// - Get Date Width
    static func getDateWith(timeInterval: Int64) -> Date {
        let date = Date(timeIntervalSince1970: TimeInterval(timeInterval))
        return date 
    }
}
