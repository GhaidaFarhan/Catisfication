//
//  AllViews.swift
//  App6
//
//  Created by Ghaida Farhan on 5/2/24.
//

import SwiftUI
struct AllViews: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.ourPalete)
                    .ignoresSafeArea()
                
                VStack(spacing: 25){
                    
                    Text("Views")
                        .font(.custom("Sparky Stones Regular",size: 25))
                    HStack(spacing: 25){
                        VStack(spacing: 20){
                            NavigationLink{
                                RelaxingView()
                            } label:{
                                
                                Image("Sea")
                                    .resizable()
                                    .frame(width: 170,height: 170)
                                    .border(.black,width: 4)
                                    .cornerRadius(20)
                            }
                            Text("Sea")
                                .font(.custom("Sparky Stones Regular", size: 24))
                        }
                        VStack(spacing: 20){
                            NavigationLink{
                                RelaxingScenery()
                            } label:{
                                Image("cloudArtwork1")
                                    .resizable()
                                    .frame(width: 170,height: 170)
                                    .border(.black,width: 4)
                                    .cornerRadius(10)
                            }
                            Text("Clouds")
                                .font(.custom("Sparky Stones Regular", size: 24))
                        }
                }
                    HStack(spacing: 25){
                        VStack(spacing: 20){
                            NavigationLink{
                                Rain()
                            } label:{
                                Image("Rain")
                                    .resizable()
                                    .frame(width: 170,height: 170)
                                    .border(.black,width: 4)
                                    .cornerRadius(10)
                            }
                            Text("Rain")
                                .font(.custom("Sparky Stones Regular", size: 24))
                        }
                        VStack(spacing: 20){
                            NavigationLink{
                                Forest()
                            } label:{
                                Image("Forest")
                                    .resizable()
                                    .frame(width: 170,height: 170)
                                    .border(.black,width: 4)
                                    .cornerRadius(10)
                            }
                            Text("Forest")
                                .font(.custom("Sparky Stones Regular", size: 24))
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    AllViews()
}
