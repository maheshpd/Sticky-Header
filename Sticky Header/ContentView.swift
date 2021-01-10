//
//  ContentView.swift
//  Sticky Header
//
//  Created by Mahesh Prasad on 10/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card : Identifiable {
    
    var id : Int
    var image : String
    var title : String
    var subTitile : String
}

var data = [

    Card(id: 0, image: "g1", title: "Zombie Gunship Survival", subTitile: "Tour the apocalypse"),
    Card(id: 1, image: "g2", title: "Portal", subTitile: "Travel through dimensions"),
    Card(id: 2, image: "g3", title: "Wave Form", subTitile: "Fun enagaging wave game"),
    Card(id: 3, image: "g4", title: "Temple Run", subTitile: "Run for your life"),
    Card(id: 4, image: "g5", title: "World of Warcrat", subTitile: "Be whoever you want"),
    Card(id: 5, image: "g6", title: "Alto’s Adventure", subTitile: "A snowboarding odyssey"),
    Card(id: 6, image: "g7", title: "Space Frog", subTitile: "Jump and have fun"),
    Card(id: 7, image: "g8", title: "Dinosaur Mario", subTitile: "Keep running")
]
