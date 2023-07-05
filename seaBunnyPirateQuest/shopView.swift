//
//  shopView.swift
//  seaBunnyPirateQuest
//
//  Created by Kylie Nguyen on 6/22/23.
//

import SwiftUI

struct shopView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("shopPage")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                
                ScrollView{
                    VStack{
                        Image("iconHeader")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350.0)
                            .position(x: 195, y: 170)
                        
                        Text("\n\n\n")
                        
                        Image("shopTitle")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50.0, height: 50.0)
                        
                        Group{
                            VStack{
                                Text("")
                                HStack{
                                    NavigationLink(destination: sbPlushView()){
                                        Image("sbPlush")
                                    }
                                    
                                    NavigationLink(destination: eliPlushView()){
                                        Image("eliPlush")
                                    }
                                }
                                
                                HStack{
                                    NavigationLink(destination: ssPlushView()){
                                        Image("ssPlush")
                                    }
                                    
                                    NavigationLink(destination: inkyPlushView()){
                                        Image("inkyPlush")
                                    }
                                }
                                
                                HStack{
                                    NavigationLink(destination: sbStickerView()){
                                        Image("sbSticker")
                                    }
                                    
                                    NavigationLink(destination: eliStickerView()){
                                        Image("eliSticker")
                                    }

                                }
                                
                                HStack{
                                    NavigationLink(destination: ssStickerView()){
                                        Image("ssSticker")
                                    }
                                    
                                    NavigationLink(destination: inkyStickerView()){
                                        Image("inkySticker")
                                    }
                                }
                                
                                HStack{
                                    NavigationLink(destination: sbKeychainView()){
                                        Image("sbKeychain")
                                    }

                                    NavigationLink(destination: eliKeychainView()){
                                        Image("eliKeychain")
                                    }
                                }
                                
                                HStack{
                                    NavigationLink(destination: ssKeychainView()){
                                        Image("ssKeychain")
                                    }

                                    NavigationLink(destination: inkyKeychainView()){
                                        Image("inkyKeychain")
                                    }

                                }
                                
                                HStack{
                                    Image("stickerSheet")

                                }
                                
                                Image("blank")
                            }
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

struct shopView_Previews: PreviewProvider {
    static var previews: some View {
        shopView()
    }
}
