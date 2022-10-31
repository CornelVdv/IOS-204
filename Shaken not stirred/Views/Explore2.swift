//
//  List.swift
//  Shaken not stirred
//
//  Created by student on 2022/10/12.
//

import SwiftUI

struct Explore2: View {
    @State private var searchText = ""
    var martinis: [City] = Martini_List
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
                VStack(alignment: .center){
                    NavigationView{
                        ScrollView (.vertical, showsIndicators: false){
                            VStack(spacing: 17){
                                ForEach(martinis){martini in
                                    HStack{
                                        Image(martini.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 150.0, height: 200.0)
                                        //.cornerRadius(8)
                                        ZStack{
                                            Rectangle()
                                                .fill(Color(UIColor(named: "White_Box")!))
                                                .frame(width: 150, height: 200)
                                            
                                        
                                            VStack{
                                                Text(martini.name)
                                                    .padding(.bottom, 25)
                                                    .frame(width: 135,height:10, alignment: .leading)
                                                    .truncationMode(.tail)
                                                HStack{
                                                    Image(systemName: "timer")
                                                        .frame(maxWidth: 75, alignment: .center)
                                                    
                                                    Text(martini.time + " min")
                                                        .fontWeight(.bold)
                                                        .frame(maxWidth: 75, alignment: .leading)
                                                        .font(.system(size: 17))
                                                }.padding(.bottom, 7)
                                                HStack{
                                                    Image(systemName: "person.2")
                                                        .frame(maxWidth: 75, alignment: .center)
                                                   
                                                    Text(martini.servings)
                                                        .fontWeight(.bold)
                                                        .frame(maxWidth: 75, alignment: .leading)
                                                        .font(.system(size: 17))
                                                    }.padding(.bottom, 7)
                                                HStack{
                                                    Text("ABV")
                                                        .frame(maxWidth: 75, alignment: .center)
                                                    
                                                    Text(martini.alchol)
                                                        .fontWeight(.bold)
                                                        .frame(maxWidth: 75, alignment: .leading)
                                                        .font(.system(size: 17))
                                                }.padding(.bottom, 7)
                                        }
                                    }.frame(width: 150, height: 200, alignment: .trailing)
                                        .cornerRadius(10)
                        }
                                
                        }
                    }.frame(width: 300 ,height: 200)
                            
                }.offset(y: 30)
                    }.offset(y: -110)
                        .searchable(text: $searchText)                       
                }
                        
            }.background(Color(UIColor(named: "LightGreen")!))
                .edgesIgnoringSafeArea(.all) //Outside stack
} //Body view
} //Struct

struct Explore2_Previews: PreviewProvider {
    static var previews: some View {
       Explore2()
    }
}

