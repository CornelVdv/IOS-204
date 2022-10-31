//
//  Active.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/13.
//

import SwiftUI

struct Active: View {
    var martini_ex = Martini_List[5]
    var body: some View {
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color(UIColor(named: "White_Box")!))
                        .frame(width: 500, height: 180)
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
                    ScrollView (.vertical, showsIndicators: true){
                VStack{
                    HStack{
                        ZStack{
                            Circle()
                                .fill(Color(UIColor(named: "White_Box")!))
                                .frame(width: 55, height: 55)
                            Image(systemName: "arrow.uturn.backward")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                        }.padding(.leading, 50)
                        Spacer()
                        ZStack{
                            Circle()
                                .fill(Color(UIColor(named: "White_Box")!))
                                .frame(width: 55, height: 55)
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                        }.padding(.trailing, 50)
                    }
                    
                    Text(martini_ex.name)
                        .font(.system(size: 35))
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    Image(martini_ex.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220.0, height: 220.0)
                        .padding(.bottom, 20)
                        .cornerRadius(10)
                        .shadow(color: .black, radius: 5, x: 5, y: 5)
                }
                HStack(spacing:50){
                    VStack{
                        Text(martini_ex.time)
                            .font(.largeTitle)
                        Text("Time")
                    }
                    VStack{
                        Text(martini_ex.servings)
                            .font(.largeTitle)
                        Text("Servings")
                    }
                    VStack{
                        Text(martini_ex.alchol)
                            .font(.largeTitle)
                        Text("ABV")
                    }
                    
                }.padding(.bottom,15)
                VStack{
                    Text("Ingredience")
                        .font(.largeTitle)
                        .padding(.bottom,10)
                    Text(martini_ex.ing)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                }.padding(.bottom,10)
                
                VStack{
                    Text("Recipe")
                        .font(.largeTitle)
                        .padding(.bottom, 10)
                    Text(martini_ex.recipe)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                         }
                    }
                }.offset(y:-100)
                Spacer()
                    }
            .background(Color(UIColor(named: "LightGreen")!))
                .edgesIgnoringSafeArea(.all)
        }
}

struct Active_Previews: PreviewProvider {
    static var previews: some View {
        Active()
    }
}
