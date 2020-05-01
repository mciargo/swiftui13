//
//  Dots.swift
//  Udemy1-08 _anime
//
//  Created by Mauro Ciargo on 4/25/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct Dots: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        HStack{
            ForEach(0...5, id: \.self){ index in Circle()
                .frame(width: 16, height: 16)
                .foregroundColor(Color.green)
                .scaleEffect(self.isLoading ? 0 : 1)
                
                .animation(Animation.linear(duration: 0.5).repeatForever()
                    .delay(Double(index)/8))
            }
        }.onAppear(){
            self.isLoading = true
        }

    }
}

struct Dots_Previews: PreviewProvider {
    static var previews: some View {
        Dots()
    }
}
