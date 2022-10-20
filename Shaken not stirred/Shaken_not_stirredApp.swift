//
//  Shaken_not_stirredApp.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/09/27.
//

import SwiftUI

@main
struct Shaken_not_stirredApp: App {
    @AppStorage("tutorialComplete") var tutorialComplete = false
    var body: some Scene {
        WindowGroup {
            if(tutorialComplete){
               Home_Page()
            } else{
                Tutorial1()
            }
          // ContentView()
           
        }
    }
}
