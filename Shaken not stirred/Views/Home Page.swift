//
//  Home Page.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Home_Page: View {
    
    var martinis: [City] = Martini_List
    var martini_ex = Martini_List[5]
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some View {
        ZStack(){
            
            VStack(){
                ZStack{
                    Rectangle()
                        .fill(Color(UIColor(named: "White_Box")!))
                        .frame(width: 500, height: 180)
//                    Image("Logo2")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 320.0, height: 180.0)
//                        .padding(.top,70)
                    HStack{
                        Text("Shaken")
                            .font(.system(size: 40))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                        Text("not")
                            .font(.system(size: 32))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                        Text("Stirred")
                            .font(.system(size: 40))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                    }
                        .frame(width: 320.0, height: 180.0)
                        .padding(.top,80)
                }.offset(y:-80)
                VStack{
                    Text("Favourite")
                        .foregroundColor(Color(UIColor(named: "AccentColor")!))
                        .font(.system(size: 25))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,20)                
                   
                   // List(martinis){martini in
                         //   ForEach(martinis){martini in
                        ScrollView (.horizontal, showsIndicators: false){
                            HStack(spacing: 17){
                                //ForEach(martinis){martini in
                                    VStack(alignment: .center){
                                        Image(martini_ex.image)
                                            .resizable()
                                            .frame(width: 140.0, height: 140.0)
                                            .padding(.bottom, 10)
                                            .cornerRadius(70)
                                        Text(martini_ex.name)
                                }
                                    VStack{
                                        Image(systemName: "plus.square")
                                            .resizable()
                                            .frame(width: 100.0, height: 100.0)
                                        Text("Add more")
                                        
                                }
                                //}
                        }.frame(height: 200)
                                
                        }.padding(.leading,20)
                            .background(Color(UIColor(named: "White_Box")!))
                    
                }.offset(y:-80)
                VStack(){
                    Text("About us")
                        .font(.system(size: 25))
                        .padding(.bottom,20)
                    Text("Shaken not stirred is a martini collection app that specializes in gathering your favourite recipes and storing them so that you can make your favourite martinis and explore many more.")
                        .multilineTextAlignment(.center)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                }.offset(y:-80)
                Spacer()
            }
        }
        .background(Color(UIColor(named: "LightGreen")!))
            .edgesIgnoringSafeArea(.all)
    }
}

struct Home_Page_Previews: PreviewProvider {
    static var previews: some View {
        Home_Page()
    }
}
