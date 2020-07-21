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
	var chat: Chat
	var body: some View {
		NavigationView {
			VStack {
				Image(chat.imageThumb)
					.resizable()
					.aspectRatio(contentMode: zoomed ? .fill : .fit)
					.cornerRadius(50)
				Image("audiowave")
					.aspectRatio(contentMode: .fit)
				Text(chat.message)
			}
			.navigationBarTitle(Text(chat.name), displayMode: .inline)
		}
	}
}

//#if DEBUG
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView{ ChatView(chat: testChats[2]) }
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
