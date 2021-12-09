//
//  Data.swift
//  Teacher App
//
//  Created by Sam L on 12/9/21.
//

import Foundation
import SwiftUI

struct Games: Identifiable {
    var id = UUID()
    var name: String
}
struct Classes: Identifiable {
    var id = UUID()
    var roll: [Student]
    var nav: String
}
