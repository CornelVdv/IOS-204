//
//  Totorial view.swift
//  Shaken not stirred
//
//  Created by Cornel van der Vyver on 2022/10/19.
//

import SwiftUI

struct Tutorial_view: View {
    @AppStorage("TutorialComplete") var TutorialComplete = false
    var body: some View {
        VStack(){
            TabView{
                Tutorial1()
                Tutorial2()
                Tutorial3()
            }
            .tabViewStyle(.page)
            Spacer()
            Button(action:{
                TutorialComplete = true
            }){Text("Skip")}
        }
    }
}

struct Totorial_view_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial_view()
    }
}
