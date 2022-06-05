//
//  GridMovieCardView.swift
//  OKR1 2022 Movie App
//
//  Created by Berkan Cimen on 24.04.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct GridMovieCardView: View {
    
    let movie : MovieViewModel
    var cardColor : Color = Color.generateRandomColor()
    
    var body: some View {
        
        VStack {
            WebImage(url: URL(string: movie.imageUrl))
                .onSuccess { image, data, cacheType in
            }
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .frame(width: 150, height: 150, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
            Text(movie.name)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(maxWidth: 150)
        }
    }
}

struct GridMovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        GridMovieCardView(movie: MovieViewModel.default)
    }
}
