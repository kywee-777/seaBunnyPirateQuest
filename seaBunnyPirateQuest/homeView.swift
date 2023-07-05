//
//  homeView.swift
//  seaBunnyPirateQuest
//
//  Created by Kylie Nguyen on 6/22/23.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("homePage")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                
                VStack{
                    NavigationLink(destination: homeView()) {
                        Image("iconHeader")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350.0)
                            .position(x: 195, y: 170)
                    }
                    
                    Group{
                        Image("homeText")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .position(x: 160, y: 10)
                    }
                    .padding()
                    .background(Rectangle() .foregroundColor(.white)
                    .cornerRadius(20)
                    .opacity(0.5)
                    .position(x: 180, y: 20)
                    .shadow(radius: 20))
                .padding()
                }
                Image("seabunny")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
                    .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        Group{
                            NavigationLink(destination: aboutView()) {
                                Image("aboutIcon")
                            }
                            
                            NavigationLink(destination: characterView()) {
                                Image("characterIcon")
                            }
                            
                            NavigationLink(destination: creatorsView()) {
                                Image("creatorsIcon")
                            }
                            
                            NavigationLink(destination: shopView()) {
                                Image("shopIcon")
                            }
                        }
                        .padding()
                        .background(Rectangle() .foregroundColor(Color(red: 0.867, green: 0.911, blue: 0.945))
                        .cornerRadius(210))
                    .padding()
                        .frame(width:100)
                    }
                }
            }
//            ZStack{
//                Image("homePage")

            } .navigationBarHidden(true)
        }
    }
    
    struct homeView_Previews: PreviewProvider {
        static var previews: some View {
            homeView()
        }
    }
