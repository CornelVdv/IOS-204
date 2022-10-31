//
//  Tutorial 3.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Tutorial3: View {
    @State private var isSkip = false
    var body: some View {
        if isSkip{
            ContentView()
        } else{
            ZStack{
                VStack{
                    HStack{
                        Text("Shaken")
                            .font(.system(size: 30))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                        Text(" not")
                            .font(.system(size: 25))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                        Text(" Stirred")
                            .font(.system(size: 30))
                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                    }
                        .padding(.top, 45)
                    VStack{
                        Text("Create")
                            .font(.system(size: 35))
                            .padding()
                            .padding(.top,50)
                        Image("Make")
                            .resizable()
                            .frame(width: 200.0, height: 200.0)
                            .padding(.bottom, 40)
                        Text("With our martini selection in its entirety there will be recipes for you to follow and learn to make them! Enjoy making the best martinis we have to offer.")
                            .multilineTextAlignment(.center)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                    }
                    
                    Spacer()
                }
                .background(Color(UIColor(named: "LightGreen")!))
                .padding(20)
            }
            .background(Color(UIColor(named: "LightGreen")!))
                .edgesIgnoringSafeArea(.all)
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){
                        self.isSkip = true
                    }
                }
    }
    }
}

struct Tutorial_3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
//With our martini selection in its entirety there will be recipes for you to follow and learn to make them! Enjoy making the best martinis we have to offer.
