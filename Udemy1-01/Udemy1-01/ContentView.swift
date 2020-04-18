//
//  ContentView.swift
//  Udemy1-01
//
//  Created by Mauro Ciargo on 4/18/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Buongiorno Mondo")
            .fontWeight(.heavy)
            .foregroundColor(.blue)
            .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
