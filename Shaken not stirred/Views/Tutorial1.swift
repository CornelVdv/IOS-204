//
//  Totorial 1.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Tutorial1: View {
    @AppStorage("TutorialComplete") var TutorialComplete = false
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
                    Text("Explore")
                        .font(.system(size: 35))
                        .padding()
                        .padding(.top,50)
                    Image("More")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .padding(.bottom, 40)
                    Text("Fond what you are looking for or something new! There is a very wide selection of martinis even for our martini veterans and lovers. Whoe knows, maybe you will find your new favourite?")
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

struct Tutorial_1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
