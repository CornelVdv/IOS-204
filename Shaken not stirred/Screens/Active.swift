//
//  Active.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/13.
//

import SwiftUI

struct Active: View {
    var body: some View {
        ZStack{
            VStack{
                Image(".Logo")
                    .resizable()
                    .scaledToFit()
                
                VStack{
                    Text("Martini name")
                    Image("")
                        .resizable()
                        .scaledToFit()
                }               
                Spacer()
                TabView {
                        Text("Home Screen")
                            .tabItem {
                                Image("home")
                                Text("Home")
                        }
                        Text("Explore Screen")
                            .tabItem {
                                Image("explore")
                                Text("Explore")
                        }
                        Text("Active Screen")
                            .tabItem {
                                Image("favouriteActive")
                                Text("Recipe")
                        }
                        Text("Settings Screen")
                            .tabItem {
                                Image("settings")
                                Text("Settings")
                    }                    }
                .background(Color.LightGreen)            }
        }
        .ignoresSafeArea()
        .background(Color.BackGround)
    }
}

struct Active_Previews: PreviewProvider {
    static var previews: some View {
        Active()
    }
}
