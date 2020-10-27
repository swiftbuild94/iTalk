//
//  ContactsVM.swift
//  iTalk
//
//  Created by Patricio Benavente on 5/09/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

final class ContactsVM: ObservableObject {
	@Published private(set) var model: Contacts = Contacts(contacts: testContacts)
	private(set) var users: [Contacts.User] = []
	
	
	var contacts: [Contacts.User]? {
		return users
	}
	
	
	// MARK: - Access the model
	func getModel()->[Contacts.User] {
		// TODO: Get model from database
		self.users = model.users
		print(users)
		return self.users
	}
	
	
	// MARK: - Intents
	func addUser() {
		
	}
	
	func removeUser() {
		
	}
	
	func sendMessage() {
		
	}
}
