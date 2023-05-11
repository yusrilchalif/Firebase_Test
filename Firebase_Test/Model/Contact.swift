//
//  Contact.swift
//  Firebase_Test
//
//  Created by Yusril on 11/05/23.
//

import Foundation
import SwiftUI

struct Contact: Codable, Identifiable {
    var id:String = UUID().uuidString
    var name: String?
}
