//
//  ComedyCat.swift
//  App6
//
//  Created by Ghaida Farhan on 5/16/24.
//

import SwiftUI

struct ComedyCat: View {
    @State private var isAnimating = false
   
    
    var body: some View {
        
        ZStack{
            
            Color(.ourPalete)
                .ignoresSafeArea()
            VStack{
                Text("Comedy Cat")
                    .font(.custom("Sparky Stones Regular", size: 40, relativeTo: .largeTitle))
                
                Image("ComedyCat")
                 .resizable()
                 .frame(width: 400, height: 400)
                 .offset(y: isAnimating ? -2 : 10)
                 .animation(Animation.easeInOut(duration: 0.1)
                .repeatForever(autoreverses: true))
                .onAppear() {
                        isAnimating = true
                                   }
                
                AllJokes()
                
               
            }
            
        }
    }
    
}
    


#Preview {
    ComedyCat()
}
