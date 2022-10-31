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
        VStack{
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                VStack{
                    Text("Account")
                        .font(.system(size:20))
                    GroupBox{
                        HStack{
                            Image(systemName: "person.crop.circle")
                            HStack{
                                Text("T. James")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Age: 24")
                                Button("Change"){}
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    }
                    }
                    .padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("Appearance")
                        .padding(.bottom,10)
                        .font(.system(size:20))
                    GroupBox{
                        VStack{
                            HStack{
                                Picker("Mode", selection: $isDarkMode){
                                Text("Light Mode").tag(false)
                                Text("Darkmode").tag(true)
                                }
                                .pickerStyle(SegmentedPickerStyle())
                            }
                            Divider()
                        }
                    }.padding(.leading, 20)
                        .padding(.trailing, 20)
                        //.background(Color.white)
                        Text("App Details")
                            .font(.system(size:20))
                            .padding(.top,10)
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
                            Divider()
                            HStack{
                                Text("Version")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("1.02.5")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                            Divider()
                            HStack{
                                Text("Code link")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Link("Github", destination: URL (string: "https://github.com/CornelVdv/IOS-204")!)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        }
                    }.padding(.leading, 20)
                        .padding(.trailing, 20)
                    Text("Contact us")
                        .font(.system(size:20))
                        .padding(.bottom,10)
                    HStack{
                        Text("Email: ")
                            .padding(.leading,20)
                        Spacer()
                        Text("21100288@virtualwindow.co.za")
                            .frame(alignment: .trailing)
                            .padding(.trailing,20)
                        }
                    Divider()
                    HStack{
                        Text("Phone: ")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,20)
                        Text("(+12)0716059423")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing,20)
                        }
                    }
                Spacer()
                }.padding(.top,60)
                    .background(Color(UIColor(named: "LightGreen")!))
                    .ignoresSafeArea(.all)
        }
    }


struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
