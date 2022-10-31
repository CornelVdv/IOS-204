//
//  ContentView.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/09/27.
//

import SwiftUI

struct ContentView: View {
    let appearance: UITabBarAppearance = UITabBarAppearance()
    init(){
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().barTintColor = UIColor.blue
    }
    var body: some View {
        TabView {
                Home_Page()
                    .tabItem {
                        Image("home")
                    }
               Explore2()
                    .tabItem {
                        Image("explore")
                    }
                Active()
                    .tabItem {
                        Image("favourite")
                }
                Settings()
                    .tabItem {
                        Image("settings")
            }
        }
       
        }
    }
//extension UITabBarController{
//    override open func viewDidLoad() {
//        let standardAppearance = UITabBarAppearance()
//
//        standardAppearance.backgroundColor = .red
//
//        tabBar.standardAppearance = standardAppearance
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
