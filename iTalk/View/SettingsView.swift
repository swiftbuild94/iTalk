//
//  SettingsView.swift
//  iTalk
//
//  Created by Patricio Benavente on 25/03/20.
//  Copyright © 2020 Patricio Benavente. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
		NavigationView {
			Form {
				Text("Settings")
					.font(.title)
			}
			.navigationBarTitle(Text("Settings"), displayMode: .inline)
		}
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
