//
//  LoadinView.swift
//  Udemy1-08 _anime
//
//  Created by Mauro Ciargo on 4/25/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct LoadinView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            
            Circle()
            .stroke(Color.gray, lineWidth: 20)
            .frame(width: 200, height: 200)
           
        Circle()
            .trim(from: 0.0, to: 0.35)
            .stroke(Color.green, lineWidth: 8)
            .frame(width: 200, height: 200)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            .onAppear(){
                self.isLoading = true
            }
        }
    }
}

struct LoadinView_Previews: PreviewProvider {
    static var previews: some View {
        LoadinView()
    }
}
