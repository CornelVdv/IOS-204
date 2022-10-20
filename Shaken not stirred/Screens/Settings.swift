//
//  Settings.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Settings: View {
    
    @AppStorage("isDarkMode") var isDarkMode = false
    @State var showAbout: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                Image(".person.crop.circle")
                VStack{
                    Text("Account")
                    GroupBox{
                    HStack{
                        Image(".person.crop.circle")
                        VStack{
                            Text("T. James")
                            Text("Age: 24")
                            Button("Change"){}
                        }
                    }
                    }
                        .background(Color.white)
                    Text("Appearance")
                    GroupBox{
                    VStack{
                        HStack{
                            Picker("Mode", selection: $isDarkMode){
                                Text("Light Mode").tag(false)
                                Text("Darkmode").tag(true)
                            }
                            .pickerStyle(SegmentedPickerStyle())
                        }
                        HStack{
                            Text("Automatic")
                            //Slider
                        }
                        }
                    }
                        .background(Color.white)
                    Text("App Details")
                    GroupBox{
                        VStack{
                            HStack{
                                DisclosureGroup("About", isExpanded: $showAbout){
                                    Text("""
                                                    Shaken not stirred is a martini collection app that specializes in gathering your favourite recipes and storing them so that you can make your favourite martinis and explore many more.
                                    """)
                                    .multilineTextAlignment(.center)
                            }
                        }
                            HStack{
                                Text("Version")
                                Text("1.02.5")
                        }
                            HStack{
                                Text("Code link")
                                Link("Github", destination: URL (string: "https://github.com/CornelVdv/IOS-204")!)
                        }
                        }
                    }
                        .background(Color.white)
                    Text("Contact us")
                    HStack{
                        Text("Email: ")
                        Text("21100288@virtualwindow.co.za")
                        }
                    HStack{
                        Text("Phone: ")
                        Text("(+12)0716059423")
                        }
                    }
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
                .background(Color.LightGreen)
                
            
        }
        .ignoresSafeArea()
        .background(Color.BackGround)    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
