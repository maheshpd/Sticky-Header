//
//  CardView.swift
//  Sticky Header
//
//  Created by Mahesh Prasad on 10/01/21.
//

import SwiftUI

struct CardView: View {
    
    var data : Card
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 20, content: {
            Image(self.data.image)
            
            VStack(alignment: .leading, spacing: 6, content: {
                
                Text(self.data.title)
                    .fontWeight(.bold)
                
                Text(self.data.subTitile)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                HStack(spacing: 12) {
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("GET")
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                        
                        //for adapting to dark mode...
                            .background(Color.primary.opacity(0.06))
                            .clipShape(Capsule())
                    })
                    
                    Text("In-App Purchases")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                
            })
            
            Spacer(minLength: 0)
            
        })
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(data: Card(id: 0, image: "g1", title: "Zombie Gunship Survival", subTitile: "Tour the apocalypse"))
    }
}
