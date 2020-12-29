//
//  ContentView.swift
//  Movies
//
//  Created by Hanan Dashti on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        List {
            
            MovieRow(movieName: "Aladdin", movieCharecters: ["Aladdin" , "Jasmin" , "Genie"])
            MovieRow(movieName: "Coco", movieCharecters: ["Aladdin" , "Jasmin" , "Genie"])
            MovieRow(movieName: "ToyStory", movieCharecters: ["Woody" , "BUZZ" , "Light Year"])
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    let movieName: String
    let movieCharecters: [String]
    
    var body: some View {
        HStack(alignment: .center){
            
            Image(movieName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100 , height: 70)
                .scaledToFit()
                
            
            VStack(alignment: .leading){
                
                Text(movieName)
                    .font(.largeTitle)
                Text(movieCharecters.joined(separator: ", "))
                
                
            }
            
        }
    }
}
