//
//  ContentView.swift
//  Udemy1-01
//
//  Created by Mauro Ciargo on 4/18/20.
//  Copyright © 2020 Mauro Ciargo. All rights reserved.
//
// para bajar fuentes ir a dafont.com

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
             Spacer()
            Text("Buongiorno Mondo")
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .font(.title)
            Spacer()
            Text("hellooooooo")
            .fontWeight(.bold)
            .foregroundColor(.green)
            .font(.custom("Avenir", size: 18))
             Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
