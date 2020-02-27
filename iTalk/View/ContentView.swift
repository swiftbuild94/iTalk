//
//  ContentView.swift
//  iTalk
//
//  Created by Patricio Benavente on 19/02/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Text("iTalk")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("iTalk")
                    }
                }
                .tag(0)
            Text("History")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("History")
                    }
                }
                .tag(1)
			Text("Settings")
						   .font(.title)
						   .tabItem {
							   VStack {
								   Image("settings")
								   Text("Settings")
							   }
						   }
						   .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
