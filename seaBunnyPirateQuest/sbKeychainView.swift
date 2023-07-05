//
//  sbKeychainView.swift
//  seaBunnyPirateQuest
//
//  Created by Kylie Nguyen on 7/5/23.
//

import SwiftUI

struct sbKeychainView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("sbBG")
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
                        
                        Group{
                            NavigationLink(destination: shopView()){
                                Image("shopBack")

                            }
                            .padding(4.0)
                            .background(Rectangle() .foregroundColor(.white)
                            .cornerRadius(20)
                            .opacity(0.5)
                            .shadow(radius: 20))
                        }
                        .position(x:195, y:150)
                        
                        Group{
                            Image("sbKeyInfo")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .position(x:195, y:215)
                        }
                        .padding(4.0)
                        .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .opacity(0.5)
                        .shadow(radius: 20))
                        .position(x:195, y:370)

                    }
                }
            }
        } .navigationBarHidden(true)    }
}

struct sbKeychainView_Previews: PreviewProvider {
    static var previews: some View {
        sbKeychainView()
    }
}
