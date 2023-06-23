//
//  openingView.swift
//  seaBunnyPirateQuest
//
//  Created by Kylie Nguyen on 6/22/23.
//

import SwiftUI

struct OpeningView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                homeView()
            } else {
                Image("openIcon")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                
                VStack(alignment: .center) {
                }
                .padding()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}

