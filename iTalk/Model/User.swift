//
//  User.swift
//  iTalk
//
//  Created by Patricio Benavente on 17/07/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import Foundation

struct User: Identifiable, Codable {
	var id = UUID()
	var name: String
	var photo: String?
	var phoneNumber: Int?
	var email: String?
	var chats: [Chats]?
	
	init(name: String, photo: String){
		self.name = name
		self.photo = photo
	}
}
