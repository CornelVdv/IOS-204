//
//  Splash2.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/31.
//

import SwiftUI

struct Splash2: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            Tutorial_view()
        } else{
            ZStack {
                LinearGradient(colors: [Color(UIColor(named: "White_Box")!), Color(UIColor(named: "LightGreen")!)], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack {
                        Text("Shaken")
                            .font(.system(size: 45))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                            .offset(y:60)
                        Image("Logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 250)
                        Text("not stirred")
                            .font(.system(size: 45))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                    }.padding(.top, 80)
                VStack {
                        Image("James qoute")
                            .resizable()
                            .scaledToFit()
                }.offset(y:110)
                    Spacer()
                }.background(Color(UIColor(named: "Splash")!))
                    .padding(20)
                    .cornerRadius(50)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 6.0){
                    self.isActive = true
                }
            }
        }
        

    }
}

struct Splash2_Previews: PreviewProvider {
    static var previews: some View {
        Splash2()
    }
}
