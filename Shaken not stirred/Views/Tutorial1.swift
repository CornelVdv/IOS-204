//
//  Totorial 1.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/06.
//

import SwiftUI

struct Tutorial1: View {
    var body: some View {
        ZStack{
            //Color(.BackGround)
             //   .edgesIgnoringSafeArea(.all)
            
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
                    Text("Explore")
                    Image("Logo")
                    Text("Fond what you are looking for or something new! There is a very wide selection of martinis even for our martini veterans and lovers. Whoe knows, maybe you will find your new favourite?")
                }
                
                Spacer()
            }
        }
            //Color(Color.BackGround)
            //.edgesIgnoringSafeArea(.all)
        
    }
}

struct Tutorial_1_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial1()
    }
}
