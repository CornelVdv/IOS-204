//
//  ContentView.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/09/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .LightGreen], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack() {
               //padding
            VStack {
                padding(.bottom, 20)
                Text("Shaken")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                Text("not stirred")
                    .foregroundColor(.green)
                
            
            }
            VStack {
                HStack {
                    Image("James qoute")
                        .resizable()
                        .scaledToFit()
                }
            }
                Spacer()
                .background(Color.SplashScreen)        }
        }
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
