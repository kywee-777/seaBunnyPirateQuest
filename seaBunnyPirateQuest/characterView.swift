//
//  characterView.swift
//  seaBunnyPirateQuest
//
//  Created by Kylie Nguyen on 6/22/23.
//

import SwiftUI

struct characterView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("characterPage")
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
                }
                
                ScrollView{
                    Group{
                        Image("allCharacters")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .position(x: 195, y: 700)

                    }
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
            } .navigationBarHidden(true)
        }
    }


struct characterView_Previews: PreviewProvider {
    static var previews: some View {
        characterView()
    }
}
