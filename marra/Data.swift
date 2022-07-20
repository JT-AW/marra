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

var profile = Person(name: "Will", contact: "willr", image: Image("Profile1"), interests: ["water", "gliding", "space", "God"], stats: true, gradient: gradients[Int.random(in: 0...gradients.count)])

var people = [
    Person(name: "John", contact: "", image: Image("Profile1"), interests: [
        "eating", "hiking"], stats: false, gradient: gradients[Int.random(in: 0...gradients.count)]),
    Person(name: "Zachariah", contact: "", image: Image("Profile2"), interests: [
        "sports", "drivingsdfesdfesdfesd", "watersports", "flying"], stats: true, gradient: gradients[Int.random(in: 0...gradients.count)])
]
