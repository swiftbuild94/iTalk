//
//  Contacts.swift
//  iTalk
//
//  Created by Patricio Benavente on 17/07/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import Foundation

struct Contacts: Identifiable, Codable {
	var id = UUID()
	var users: Array<User>
	
	init() {
		users = Array<User>()
	}
	
	init(contacts: [Contacts.User]){
		self.users = contacts
	}
	
	// MARK: - Mutating Users Func
	mutating func addUser(_ user: User){
		
	}

	mutating func removeUser(id: Int){
		
	}

	// MARK: - User
	struct User: Identifiable, Codable {
		var id = UUID()
		var name: String
		var photo: String?
		var thumb: String?
		var phoneNumber: String?
		var email: String?
		var chats: [Chats]?

		init(name: String, photo: String, thumb: String){
			self.name = name
			self.photo = photo
			self.thumb = thumb
		}
		
		// MARK: - Mutating User Func
		mutating func changName(_ name: String){
			
		}
		
		mutating func changePhoto(_ photo: String){
			
		}
		
		mutating func changePhone(_ phone: String){
			
		}
		
		mutating func changeEmail(_ email: String){
		}
		
		// MARK: - Mutating Chat Func
		mutating func addChat(_ chat: Chat){
			
		}
		
		mutating func removeChat(id: Int){
			
		}
		
	}
}
