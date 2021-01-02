//
//  ContentView.swift
//  Movies
//
//  Created by Hanan Dashti on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationView{
            
        List(movies) { movie in
            NavigationLink(
                destination: MovieDetailView(movie: movie),
            
                label: {
                    MovieRow(movie: movie)
                })
        
        }
        .navigationBarTitle("Movies")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        HStack(alignment: .center){
            
            Image(movie.name)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100 , height: 70)
                .scaledToFit()
                
            
            VStack(alignment: .leading){
                
                Text(movie.name)
                    .font(.largeTitle)
                Text(movie.characters.joined(separator: ", "))
                
                
            }
            
        }
    }
}
