//
//  Chats.swift
//  iTalk
//
//  Created by Patricio Benavente on 17/07/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import Foundation

struct Chats: Identifiable, Codable {
	var chats: [Chat]
	var id = UUID()
	
	struct Chat: Identifiable, Codable {
		var id = UUID()
		var typeOfContent: TypeOfContent?
		var contentText: String?
		var contentAudio: Data?
		var contentVideo: Data?
		var date = Date()
		var delivered = false
		var read = false
		var readtime: Date?
	}
}
	
enum TypeOfContent: String, Codable {
	case text
	case audio
	case video
	case live
}
