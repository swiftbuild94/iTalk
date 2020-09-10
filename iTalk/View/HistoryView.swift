//
//  HistoryView.swift
//  iTalk
//
//  Created by Patricio Benavente on 2/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
	private let contacts = ContactsVM().getModel()
	
    var body: some View {
		NavigationView {
			List(contacts) { contact in
				ChatCell(contact: contact)
			}
			.navigationBarTitle(Text("History"), displayMode: .inline)
		}
	}
}

struct ChatCell: View {
	var contact: Contacts.User
	
	var body: some View {
		return NavigationLink(destination: ChatView(contact: contact)) {
			Image(contact.thumb!)
				.clipShape(Circle())
				.shadow(radius: 5)
				.overlay(Circle().stroke(Color.blue, lineWidth: 0))
			VStack(alignment: .leading) {
				Text(contact.name)
				Text("TODO: Message")
					.font(.subheadline)
					.foregroundColor(.secondary)
			}
		}
	}
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		HistoryView()
    }
}
