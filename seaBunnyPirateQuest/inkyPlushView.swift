//
//  inkyPlushView.swift
//  seaBunnyPirateQuest
//
//  Created by Kylie Nguyen on 6/28/23.
//

import SwiftUI

struct inkyPlushView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("inkyBG")
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
                    }
                }
            }
        }  .navigationBarHidden(true)
    }
}

struct inkyPlushView_Previews: PreviewProvider {
    static var previews: some View {
        inkyPlushView()
    }
}
