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
			.navigationBarTitle(Text("History"))
		}
	}
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		HistoryView(chats: testChats)
    }
}


struct Chat: Identifiable {
	var id: UUID = UUID()
	var name: String
	var message: String
	var imageName: String { return name }
}

#if DEBUG
let testChats: [Chat] = [Chat(name: "John Appleseed", message: "Hi there"), Chat(name: "Steve Jobs", message: "Hello world"), Chat(name: "Patricio Benavente", message: "Audio…")]
#endif

struct ChatCell: View {
	var chat: Chat
	var body: some View {
		NavigationLink(destination: Text(chat.name)) {
			//				NavigationButton(destination: Text(chat.name)){
			Image(systemName: "photo")
				.cornerRadius(8)
			VStack(alignment: .leading) {
				Text(chat.name)
				Text(chat.message)
					.font(.subheadline)
					.foregroundColor(.secondary)
			}
		}
	}
}
