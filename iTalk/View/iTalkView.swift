//
//  iTalk.swift
//  iTalk
//
//  Created by Patricio Benavente on 26/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct iTalkView: View {
	@ObservedObject private var viewModel = ContactsVM()
	
	var contacts: [Contacts.User]? {
		return viewModel.getModel()
	}
	
	var body: some View {
		NavigationView {
			if contacts != nil {
				Grid(contacts!) { contact in
					// Text("Count: \(contacts.count)")
					NavigationLink(destination: ChatView(contact: contact)) {
						ContactView(contact: contact)
					}
				}
			}
		}
		.navigationBarTitle(Text("iTalk"), displayMode: .inline)
	}
}


struct ContactView: View {
	var contact: Contacts.User
	var chats: Int? = 4
	var body: some View {
		VStack{
			ZStack{
				Image(contact.thumb!)
//					.background(Circle())
					.clipShape(Circle())
					.overlay(Circle().stroke(Color.black, lineWidth: lineWidth))
					.shadow(radius: shadowRadius)
					.padding(padding)
				if chats != nil && chats! > -1 {
					NotificationsView(chats: chats!)
				}
			}
			Text(contact.name)
				.foregroundColor(Color.black)
				.font(.headline)
				.bold()
				.autocapitalization(.sentences)
		}
	.padding(padding)
	}
	private let shadowRadius: CGFloat = 1
	private let lineWidth: CGFloat = 1
	private let padding: CGFloat = 10
	
	struct NotificationsView: View {
		var chats: Int
		var body: some View {
			Group{
				Text("\(chats)")
					.font(.subheadline)
					.bold()
					.foregroundColor(Color.black)
					.padding(padding)
			}
			.background(Circle())
			.position(x: 115, y: 145)
			.foregroundColor(Color.red)
			.shadow(radius: shadowRadius)
//			.overlay(Circle().stroke(Color.black, lineWidth: lineWidth))
		}
		private let shadowRadius: CGFloat = 5
		private let lineWidth: CGFloat = 2
		private let padding: CGFloat = 10
	}
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
		iTalkView()
    }
}
