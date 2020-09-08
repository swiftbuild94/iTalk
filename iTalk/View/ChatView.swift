//
//  ChatView.swift
//  iTalk
//
//  Created by Patricio Benavente on 9/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct ChatView: View {
	@State private var zoomed = false
	var contact: User
	var body: some View {
		NavigationView {
			VStack {
				Image(contact.photo!)
					.resizable()
					.aspectRatio(contentMode: zoomed ? .fill : .fit)
					.cornerRadius(50)
				Image("audiowave")
					.aspectRatio(contentMode: .fit)
				Text("TODO Chats")
			}
			.navigationBarTitle(Text(contact.name), displayMode: .inline)
		}
	}
}

//#if DEBUG
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView{ ChatView(contact: testContacts[3]) }
    }
	
}
//#endif

/*
HStack {
.cornerRadius(32)
		.tapAction {
			withAnimation{
				self.zoomed.toggle()
			}
	}
	
}
	
*/
