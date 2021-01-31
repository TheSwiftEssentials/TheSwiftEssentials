//  StringExtensions.swift

import Foundation

public extension String {
    /// Integer value from the string
    var int: Int? {
        Int(self)
    }
}
