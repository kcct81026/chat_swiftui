//
//  Measage.swift
//  ChatAppDemo
//
//  Created by Kcct on 04/12/2024.
//

import Foundation

struct Message: Identifiable, Codable{
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date 
}
