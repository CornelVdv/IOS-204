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
    @AppStorage("isDarkMode") var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            if(tutorialComplete){
               //Home_Page()
                ContentView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            } else{
                Splash2()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
                   // .preferredColorScheme(isDarkMode ? .dark : .light)
//                ContentView()
//                    .preferredColorScheme(isDarkMode ? .dark : .light)
                //Splash()
            }
          // ContentView()
           
        }
    }
}
