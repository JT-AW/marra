//
//  Data.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var contact: String
    var image: Image
    var interests: [String]
    var stats: Bool
    var gradient: LinearGradient
}

var profile = Person(name: "John", contact: "j.z.w_", image: Image("Profile1"), interests: ["water", "gliding", "space", "reading"], stats: true, gradient: gradients[Int.random(in: 0...gradients.count)])

var people = [
    Person(name: "Jack", contact: "", image: Image("Profile2"), interests: [
        "eating", "hiking"], stats: false, gradient: gradients[Int.random(in: 0...gradients.count)]),
    Person(name: "Zachariah", contact: "", image: Image("Profile3"), interests: [
        "sports", "driving", "watersports", "flying"], stats: true, gradient: gradients[Int.random(in: 0...gradients.count)])
]
