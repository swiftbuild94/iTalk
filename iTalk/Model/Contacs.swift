//
//  Contacts.swift
//  iTalk
//
//  Created by Patricio Benavente on 17/07/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import Foundation

struct Contacts: Identifiable {
	internal var id = UUID()
	private(set) var users: Array<User>
	
	init() {
		users = Array<User>()
	}
	
	init(contacts: [Contacts.User]){
		self.users = contacts
	}
	
	// MARK: - Mutating Users Func
	mutating func addUser(_ user: User){
		self.users.append(user)
	}

	mutating func removeUser(id: UUID) -> Bool {
		for index in 0 ..< self.users.count {
			if users[index].id == id {
				self.users.remove(at: index)
				return true
			}
		}
		return false
	}

	// MARK: - User
	struct User: Identifiable {
		var id = UUID()
		var uid: String
		var name: String
		var photo: String?
		var thumb: String?
		var phoneNumber: String?
		var email: String?
		var newChats: Int = 0
		var chats: [Chat] = []
		
		init(name: String, photo: String, thumb: String){
			self.name = name
			self.photo = photo
			self.thumb = thumb
		}
		
		// MARK: - Mutating User Func
		mutating func changName(_ name: String){
			self.name = name
		}
		
		mutating func changePhoto(_ photo: String){
			self.photo = photo
		}
		
		mutating func changePhone(_ phone: String){
			self.phoneNumber = phone
		}
		
		mutating func changeEmail(_ email: String){
			self.email = email
		}
		
		// MARK: - Mutating Chat Func
		mutating func addChat(_ chat: Chat){
			self.chats.append(chat)
		}
		
		mutating func unreadChats(){
			var count = 0
			for chat in chats {
				if chat.read == false {
					count += 1
				}
			}
			self.newChats = count
		}

		mutating func deliveredChat(_ id: UUID){
			for var chat in chats {
				if chat.id == id {
					chat.delivered = true
					removeChat(id: chat.id)
					addChat(chat)
				}
			}
		}
		
		mutating func removeChat(id: UUID){
			var index = 0
			for chat in chats {
				if chat.id == id {
					self.chats.remove(at: index)
				}
				index += 1
			}
		}
	}
}
