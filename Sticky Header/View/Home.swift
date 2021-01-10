//
//  Home.swift
//  Sticky Header
//
//  Created by Mahesh Prasad on 10/01/21.
//

import SwiftUI

struct Home: View {
    
    //for sticky header view...
    @State var time = Timer.publish(every: 0.1, on: .current, in: .tracking).autoconnect()
    
    @State var show = false
    
    var body: some View {
        
        ZStack(alignment: .top, content: {
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack {
                    
                    //now going to do strechy header...
                    //follow me...
                    
                    GeometryReader{ g in
                        Image("poster")
                            .resizable()
                        
                        //fixing the view to the top will give strechy effect
                        //increasing height by drag amount...
                        
                            .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                            .frame(height: g.frame(in: .global).minY > 0 ? UIScreen.main.bounds.height / 2.2 + g.frame(in: .global).minY: UIScreen.main.bounds.height / 2.2)
                            .onReceive(self.time) { (_) in
                                
                                //its not a timer...
                                //for tracking the image is scrolled out or not
                                
                                let y = g.frame(in: .global).minY
                                
                                if -y > (UIScreen.main.bounds.height / 2.2) - 50 {
                                    
                                    withAnimation {
                                        self.show = true
                                    }
                                } else {
                                    withAnimation {
                                        self.show = false
                                    }
                                }
                            }
                    }
                    
                    //fixing default height...
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    
                    VStack {
                        
                        HStack {
                            
                            Text("New Games We Love")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("See All")
                                    .fontWeight(.bold)
                            })
                            
                        }
                        
                        VStack(spacing: 20) {
                            
                            ForEach(data) { i in
                                CardView(data: i)
                            }
                        }.padding(.top)
                        
                        
                    }.padding()
                    
                    Spacer()
                    
                }
                
                
            })
            
            if self.show{
                TopView()
            }
            
        }).edgesIgnoringSafeArea(.top)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
