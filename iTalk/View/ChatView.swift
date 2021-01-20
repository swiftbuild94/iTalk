//
//  ChatView.swift
//  iTalk
//
//  Created by Patricio Benavente on 9/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct ChatView: View {
	@ObservedObject private var viewModel = ContactsVM()
	
	var contacts: [Contacts.User]? {
		return viewModel.getModel()
	}
	
	@State private var zoomed = false
	var contact: Contacts.User
	
//	let contact: Contacts.User = contacts[index]
	
	var body: some View {
		NavigationView {
			VStack {
				Image(contact.photo!)
					.resizable()
					.aspectRatio(contentMode: zoomed ? .fill : .fit)
					.cornerRadius(cornerRadius)
				Image("audiowave")
					.aspectRatio(contentMode: .fit)
				Text("TODO Chats")
//				TextField("Message", text: <#T##Binding<String>#>, onEditingChanged: <#T##(Bool) -> Void#>, onCommit: <#T##() -> Void#>)
				
			}
			.navigationBarTitle(Text(contact.name), displayMode: .inline)
		}
	}
	let cornerRadius: CGFloat = 50
}
/*
struct ChatView_Previews: PreviewProvider {
	let contacts = ContactsVM().contacts
	
	static var previews: some View {
		ChatView(contact: contacts[0])
    }
}
*/
