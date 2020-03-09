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
				.fontWeight(.bold)
				.foregroundColor(Color.blue)
				.tabItem {
					VStack {
						Image(systemName: "bubble.left.and.bubble.right.fill")
                        Text("iTalk")
                    }
                }
                .tag(0)
            HistoryView()
//                .font(.title)
                .tabItem {
                    VStack {
						Image(systemName: "clock.fill")
                        Text("History")
                    }
                }
                .tag(1)
			Text("Settings")
						   .font(.title)
						   .tabItem {
							   VStack {
								Image(systemName: "gear")
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
