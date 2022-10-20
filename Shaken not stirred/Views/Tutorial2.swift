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
            //Color(.BackGround)
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
                        .font(.system(size: 25))}
                        .foregroundColor(.DarkGreen)
                
                VStack{
                    Text("Favourite")
                    Image("Logo")
                    Text("Find and tag your favourite martinis so that you not only have quick access to them but so that you may never forget them!")
                }
                
                Spacer()
            }
        }
    }
}

struct Tutorial_2_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial2()
    }
}
