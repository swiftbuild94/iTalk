//
//  MainView.swift
//  iTalk
//
//  Created by Patricio Benavente on 26/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct MainView: View {
	var contacts: [Contacts.User] = Contacts.users
	
    var body: some View {
		NavigationView {
			HStack(alignment: .top){
				VStack(alignment: .center) {
//					Text("Count: \(contacts.count)")
					ForEach(contacts) { contact in
						ContactView(contact: contact)
					.padding()
					}
				}
			}
		}
		.navigationBarTitle(Text("iTalk"), displayMode: .inline)
	}
}

struct ContactView: View {
	var contact: Contact.User
	var chats: Int? = 4
	var body: some View {
		VStack{
			ZStack{
				Image(contact.thumb!)
					.clipShape(Circle())
					.overlay(Circle().stroke(Color.blue, lineWidth: 2))
					.shadow(radius: 50)
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
}

struct NotificationsView: View {
	var chats: Int
	var body: some View {
		ZStack{
			Text("\(chats) chats")
				.font(.headline)
				.bold()
				.foregroundColor(Color.black)
				.accentColor(Color.black)
				.clipShape(Circle())
		}
//		.overlay(Circle().fill(Color.red))
		.overlay(Circle().stroke(Color.black))
		.shadow(radius: 20)
	}
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
		MainView(contacts: testContacts)
    }
}
