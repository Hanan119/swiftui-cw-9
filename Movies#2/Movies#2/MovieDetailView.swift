//
//  MovieDetailView.swift
//  Movies#2
//
//  Created by Hanan Dashti on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
   
    var body: some View {
        ZStack{
            
            Group{
                Image(movie.name)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            } .ignoresSafeArea()
            
            VStack(alignment: .center){
                
                Image(movie.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 6))
                    
                    
                
                
                    
                Text(movie.name)
                        .font(.system(size: 50))
                        .bold()
                Text(movie.characters.joined(separator: ", "))
                        .font(.title)
                    
                    
                Spacer()
                
            }
            
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)
            
            
            
            
            
        }
        
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movies[0])
    }
}
