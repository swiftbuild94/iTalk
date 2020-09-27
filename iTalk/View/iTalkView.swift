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
	
	private var contacts: [Contacts.User]? {
		return viewModel.getModel()
	}
	
	var body: some View {
		NavigationView {
			if contacts != nil {
				Grid(contacts!) { contact in
					// Text("Count: \(contacts.count)")
					NavigationLink(destination: ChatView(contact: contact)) {
						ContactView(contact: contact)
						.padding(10)
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
					.clipShape(Circle())
					.overlay(Circle().stroke(Color.blue, lineWidth: lineWidth))
					.shadow(radius: shadowRadius)
				if chats != nil && chats! > -1 {
					NotificationsView(chats: chats!)
				}
			}
			Text(contact.name)
				.font(.headline)
				.bold()
				.autocapitalization(.sentences)
		}
	}
	let shadowRadius: CGFloat = 60
	let lineWidth: CGFloat = 2
}

struct NotificationsView: View {
	var chats: Int
	var body: some View {
		ZStack{
			Text("\(chats) 9")
				.font(.headline)
				.bold()
				.foregroundColor(Color.black)
				.accentColor(Color.black)
				.clipShape(Circle())
		}
		.overlay(Circle().fill(Color.red))
		.overlay(Circle().stroke(Color.black))
		.shadow(radius: shadowRadius)
	}
	let shadowRadius: CGFloat = 20.0
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
		iTalkView()
    }
}
