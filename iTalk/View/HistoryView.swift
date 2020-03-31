//
//  HistoryView.swift
//  iTalk
//
//  Created by Patricio Benavente on 2/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
	var chats: [Chat] = []
    var body: some View {
		NavigationView {
			List(chats) { chat in
				ChatCell(chat: chat)
			}
			.navigationBarTitle(Text("History"), displayMode: .inline)
		}
	}
}

struct ChatCell: View {
	var chat: Chat
	var body: some View {
		return NavigationLink(destination: ChatView(chat: chat)) {
			Image(chat.imageThumb)
				.clipShape(Circle())
				.shadow(radius: 5)
				.overlay(Circle().stroke(Color.blue, lineWidth: 0))
			VStack(alignment: .leading) {
				Text(chat.name)
				Text(chat.message)
					.font(.subheadline)
					.foregroundColor(.secondary)
			}
		}
	}
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		HistoryView(chats: testChats)
    }
}
