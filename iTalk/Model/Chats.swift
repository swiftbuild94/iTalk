//
//  Chats.swift
//  iTalk
//
//  Created by Patricio Benavente on 17/07/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import Foundation

struct Chat: Identifiable {
	var id = UUID()
	var isFrom: Bool = true
	var typeOfContent: TypeOfContent?
	var contentText: String?
	var contentAudio: Data?
	var contentVideo: Data?
	var location: String?
	var date = Date()
	var delivered = false
	var read = false
	var readtime: Date?
	
	init(text: String){
		self.isFrom = false
		self.contentText = text
	}
	init(audio: Data){
		self.isFrom = false
		self.contentAudio = audio
	}
	init(video: Data){
		self.isFrom = false
		self.contentVideo = video
	}
	init(location: String){
		self.isFrom = false
		self.location = location
	}
}

enum TypeOfContent: String, Codable {
	case text
	case audio
	case video
	case live
}
