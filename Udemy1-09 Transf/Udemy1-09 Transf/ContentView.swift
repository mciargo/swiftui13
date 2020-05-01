//
//  ContentView.swift
//  Udemy1-09 Transf
//
//  Created by Mauro Ciargo on 4/26/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

@State private var showTranslation = false

    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 250, height: 250)
                .foregroundColor(.orange)
            .overlay(
                Text("Car")
                    .font(.system(.largeTitle, design:.rounded))
                    .bold()
                    .foregroundColor(.white)
            )
            if showTranslation{
                
                Rectangle()
                    .frame(width: 250, height: 250)
                    .foregroundColor(.pink)
                .overlay(
                    Text("Bike")
                        .font(.system(.largeTitle, design:.rounded))
                        .bold()

                        )
                
                    .transition(.offsetScaleOpacityOut)
                
                
//                    .transition(.scale(scale: 0, anchor: .bottom))
//                    .transition(.offset(x: 0, y: 700))
//                .transition(.offset(x: -700, y: 0))
                
//                    .transition(AnyTransition.offset(x: -700, y: 0).combined(with: .scale).combined(with: .opacity))
                
                

            }
        }
        
        .onTapGesture {
            withAnimation(Animation.spring()){
                
         
    
            self.showTranslation.toggle()
                   }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnyTransition {
    static var offsetScaleOpacityOut: AnyTransition{
        
        AnyTransition.offset(x: -700, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
}
