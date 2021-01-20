//
//  LogIn.swift
//  iTalk
//
//  Created by Patricio Benavente on 17/07/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct LogIn: View {
    var body: some View {
		NavigationView {
			Form {
				Image("AppIcon")
				Text("Log In")
					.font(.title)
				Text("")
				
			}
			.navigationBarTitle(Text("Log In"), displayMode: .inline)
		}
	}
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
