//
//  iTalkApp.swift
//  
//
//  Created by Patricio Benavente on 20/01/21.
//

import SwiftUI
import Firebase

struct iTalkApp: App {
 
	init() {
		FirebaseApp.configure()
	}
	
	var body: some Scene {
		windowGroup {
			ContentView()
		}
	}
}
