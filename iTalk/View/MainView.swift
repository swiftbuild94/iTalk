//
//  MainView.swift
//  iTalk
//
//  Created by Patricio Benavente on 26/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct MainView: View {
	var chats: [Chat] = []
    var body: some View {
		NavigationView {
			HStack(alignment: .top){
				VStack(alignment: .center) {
					// Text("Count: \(chats.count)")
					ForEach(chats) { chat in
						Image(chat.imageThumb)
							.clipShape(Circle())
							.shadow(radius: 15)
							.overlay(Circle().stroke(Color.blue, lineWidth: 2))
						Text(chat.name)
					}
				}
			}
		}
		.navigationBarTitle(Text("iTalk"), displayMode: .inline)
	}
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
		MainView(chats: testChats)
    }
}
