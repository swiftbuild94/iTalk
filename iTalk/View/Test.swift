//
//  Test.swift
//  iTalk
//
//  Created by Patricio Benavente on 26/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import Foundation

struct Chat: Identifiable {
	var id: UUID = UUID()
	var name: String
	var message: String
	var imageName: String
	var imageThumb: String
}


let testChats: [Chat] = [Chat(name: "John Appleseed", message: "Hi there", imageName: "johnappleseed", imageThumb: "thm_johnappleseed"), Chat(name: "Steve Jobs", message: "Hello world", imageName: "SteveJobs", imageThumb: "thm_SteveJobs"), Chat(name: "Patricio Benavente", message: "Audio… 1:25", imageName: "PatricioBenavente", imageThumb: "thm_PatricioBenavente")]
