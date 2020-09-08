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
	private var users: [Contacts.User]
	
	init(){
		users = model.users
	}
	
	// MARK: - Access the model
	func getModel()->[Contacts.User] {
		return users
	}
	
	
	// MARK: - Intents
	func addUser() {
		
	}
	
	func removeUser() {
		
	}
	
	func sendMessage() {
		
	}
}
