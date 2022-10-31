//
//  Tutorial 2.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Tutorial2: View {
    var body: some View {
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
                        Text("Favourite")
                            .font(.system(size: 35))
                            .padding()
                            .padding(.top,50)
                        Image("Like")
                            .resizable()
                            .frame(width: 200.0, height: 200.0)
                            .padding(.bottom, 40)
                        Text("Find and tag your favourite martinis so that you not only have quick access to them but so that you may never forget them!")
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
            
    }
}

struct Tutorial_2_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial2()
    }
}
