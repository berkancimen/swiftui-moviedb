//
//  HorizontalSliderView.swift
//  OKR1 2022 Movie App
//
//  Created by Berkan Cimen on 24.04.2022.
//

import SwiftUI

struct HorizontalSliderCardView: View {
    
    let nameAndId : (String, Int)
    var cardColor : Color = Color.generateRandomColor()
    
    var body: some View {
            ZStack{
                Rectangle()
                    .frame(width: 140, height: 60)
                    .foregroundColor(cardColor)
                    .background(LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                    .opacity(0.8)
                    .aspectRatio(contentMode: .fill)
                VStack (alignment: .center) {
                    Text(nameAndId.0)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(10)
                }
            }
        }
}

struct HorizontalSliderCardView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalSliderCardView(nameAndId: ("String", 0))
    }
}
