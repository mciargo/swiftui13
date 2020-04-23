//
//  ContentView.swift
//  respuesta tarea 5b
//
//  Created by Mauro Ciargo on 4/23/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    struct ClickView: View {



    @State private var redClicks = 0

    @State private var yellowClicks = 0

    @State private var blueClicks = 0

    @State private var totalClicks = 0


    var body: some View {
        VStack {

        CounterView(redClicks: $redClicks, yellowClicks: $yellowClicks, blueClicks: $blueClicks, textColor: .black)

        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        
        ContentView()
    }
}
