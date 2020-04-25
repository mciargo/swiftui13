//
//  progree_indicator.swift
//  udemy1-07 draw
//
//  Created by Mauro Ciargo on 4/24/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct progree_indicator: View {
    private var trackGradient = LinearGradient(gradient: Gradient(colors: [Color(red:50/255, green:150/255, blue:27/255)]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        
        
        ZStack{
            
           Circle()
            .stroke(Color(.systemGray6), lineWidth: 10)
            .frame(width:200, height: 200)
            
            Circle()
                .trim(from: 0.0, to: 0.75)
            .stroke(trackGradient, lineWidth: 20)
            .frame(width:200, height: 200)
                .overlay(VStack{
                    Image(systemName: "hare").font(.system(size:30))
                    
                    Text("75%")
                        .font(.system(size:45, weight:.bold, design:.rounded))
                    Text("Pasos")
                        .font(.system(size:26, weight:.bold, design:.rounded))
                        .foregroundColor(.green)
                })
            
//            .font(.system(size:40)).foregroundColor(.orange).font(.largeTitle)
//            .multilineTextAlignment(.center)
//                .shadow(color: .black, radius: 0.1, x: 2, y: 2)
            
        }
        
        
        
        
    }
}

struct progree_indicator_Previews: PreviewProvider {
    static var previews: some View {
        progree_indicator()
    }
}
