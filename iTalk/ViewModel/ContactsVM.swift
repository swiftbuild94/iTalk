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
	@Published private(set) var users: [Contacts.User]?
	var selectedUser: UUID?
	
	// MARK: - Access the model
	func getModel()->[Contacts.User] {
		// TODO: Get model from database
		self.users = model.users
		print(users!)
		return self.users!
	}
	
	private func isDelivered(_ message: Chat, userIndex: Int){
		if !message.delivered {
			DispatchQueue.main.async {
				self.users![userIndex].deliveredChat(message.id)
			}
		}
	}
	
	private func checkMessages(_ contact: Contacts.User, userIndex: Int){
		if contact.chats.count > 0 {
			for message in contact.chats {
				isDelivered(message, userIndex: userIndex)
			}
		}
	}
	
	private func checkContacts(){
		//get contacts from network
		var index = 0
		for contact in self.users! {
			self.checkMessages(contact, userIndex: index)
			index += 1
		}
	}
	
	func getMessages() {
		DispatchQueue.global(qos: .background).async {
			self.checkContacts()
		}
	}
	
	
	// MARK: - Intents
	func addUser() {
		let user = Contacts.User(name: "String", photo: "String", thumb: "String")
		self.model.addUser(user)
	}
	
	func removeUser(id: UUID) {
		let notError = self.model.removeUser(id: id)
		print("Removed: \(notError) id:\(id)")
	}
	
	private func sendChat(_ chat: Chat){
		var index = 0
		for contact in self.users! {
			if contact.id == selectedUser {
				users![index].addChat(chat)
			}
			index += 1
		}
	}
	
	func sendTextMessage(_ message: String) {
		let chat = Chat(text: message)
		sendChat(chat)
	}
	func sendAudioMessage(_ message: Data) {
		let chat = Chat(audio: message)
		sendChat(chat)
	}
	func sendVideoMessage(_ message: Data) {
		let chat = Chat(video: message)
		sendChat(chat)
	}
	func sendLocation(_ message: String) {
		let chat = Chat(location: message)
		sendChat(chat)
	}
	
}
