//
//  Home Page.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Home_Page: View {
    var body: some View {
        ZStack(){
            
            VStack(){
                Image(".Logo")
                    .resizable()
                    .scaledToFit()
                VStack(){
                    Text("Favourite")
                        .foregroundColor(.DarkGreen)
                
                    HStack(){
                    //block
                    }
                }
                VStack(){
                    Text("Explore more")
                        .foregroundColor(.DarkGreen)
                
                    HStack(){
                    //block
                    }
                }
                VStack(){
                    Text("About us")
                        .font(.system(size: 25))
                    Text("Shaken not stirred is a martini collection app that specializes in gathering your favourite recipes and storing them so that you can make your favourite martinis and explore many more.")
                        .font(.system(size: 18))
                }
                Spacer()
                TabView {
                        Text("Home Screen")
                            .tabItem {
                                Image("homeActive")
                                Text("Home")
                        }
                        Text("Explore Screen")
                            .tabItem {
                                Image("explore")
                                Text("Explore")
                        }
                        Text("Active Screen")
                            .tabItem {
                                Image("favourite")
                                Text("Recipe")
                        }
                        Text("Settings Screen")
                            .tabItem {
                                Image("settings")
                                Text("Settings")
                    }                    }
                    .background(Color.LightGreen)
            }
        }
        .background(Color.BackGround)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Home_Page_Previews: PreviewProvider {
    static var previews: some View {
        Home_Page()
    }
}
