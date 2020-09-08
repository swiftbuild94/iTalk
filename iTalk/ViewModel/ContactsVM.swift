//
//  ContactsVM.swift
//  iTalk
//
//  Created by Patricio Benavente on 5/09/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

class ContactsVM {
	private var model: Contacts = Contacts(users: testContacts)
	
	// MARK: - Access the model
	var contacts: [Contacts.User] {
		return model.users
	}
	
	// MARK: - Intents
	func addUser() {
		
	}
	
	func removeUser() {
		
	}
	
	func sendMessage() {
		
	}
}
