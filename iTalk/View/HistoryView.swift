//
//  HistoryView.swift
//  iTalk
//
//  Created by Patricio Benavente on 2/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
	@ObservedObject private var viewModel = ContactsVM()
	private var contacts: [Contacts.User]? {
		return viewModel.getModel()
	}
	
    var body: some View {
		NavigationView {
			if contacts != nil {
				List(contacts!) { contact in
					ChatCell(contact: contact)
				}
			}
		}
		.navigationBarTitle(Text("History"), displayMode: .inline)
	}
}

struct ChatCell: View {
	var contact: Contacts.User
	
	var body: some View {
		return NavigationLink(destination: ChatView(contact: contact)) {
			Image(contact.thumb!)
				.clipShape(Circle())
				.shadow(radius: shadowRadius)
				.overlay(Circle().stroke(Color.blue, lineWidth: lineWidth))
			VStack(alignment: .leading) {
				Text(contact.name)
				Text("TODO: Message")
					.font(.subheadline)
					.foregroundColor(.secondary)
			}
		}
	}
	let shadowRadius: CGFloat = 5
	let lineWidth: CGFloat = 0
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		HistoryView()
    }
}
