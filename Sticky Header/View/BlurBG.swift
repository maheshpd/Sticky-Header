//
//  BlurBG.swift
//  Sticky Header
//
//  Created by Mahesh Prasad on 10/01/21.
//

import SwiftUI

struct BlurBG: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        //for dark mode adoption...
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
    
}
