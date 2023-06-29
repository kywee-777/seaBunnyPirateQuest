//
//  creatorsView.swift
//  seaBunnyPirateQuest
//
//  Created by Kylie Nguyen on 6/22/23.
//

import SwiftUI

struct creatorsView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("creatorsPage")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                
                ScrollView{
                    VStack{
                        NavigationLink(destination: homeView()) {
                            Image("iconHeader")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350.0)
                                .position(x: 195, y: 170)
                        }
                        
                        Text("\n\n\n")
                        
                        Image("creatorsTitle")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50.0, height: 50.0)
                        
                        Group{
                            Image("creators")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                        }
                        .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .opacity(0.5)
                        .shadow(radius: 20))
                    }                    
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
                }
            } .navigationBarHidden(true)
        }
    }

struct creatorsView_Previews: PreviewProvider {
    static var previews: some View {
        creatorsView()
    }
}
