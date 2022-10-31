//
//  Martinis.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

//MARK: - City Data Model

struct City: Identifiable {
    //each city should have these values
    var id = UUID() //creates a unique identifier for our city
    var name: String
    var alchol: String
    var servings: String
    var time: String
    var image: String
    var index: String
    var recipe: String
    var ing: String
}
