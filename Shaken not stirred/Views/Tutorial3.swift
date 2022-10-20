//
//  Tutorial 3.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Tutorial3: View {
    var body: some View {
        ZStack{
            //Color(.BackGround1)
            //    .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Text("Shaken")
                        .font(.system(size: 25))
                        .foregroundColor(.DarkGreen)
                    Text(" not")
                        .font(.system(size: 20))
                        .foregroundColor(.DarkGreen)
                    Text(" Stirred")
                    .font(.system(size: 25))
                    .foregroundColor(.DarkGreen)
            }
                VStack{
                    Text("Make")
                    Image("Logo")
                    Text("With our martini selection in its entirety there will be recipes for you to follow and learn to make them! Enjoy making the best martinis we have to offer.")
                }
                
                Spacer()
            }
        }
    }
}

struct Tutorial_3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
