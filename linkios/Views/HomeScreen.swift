//
//  HomeView.swift
//  linkios
//
//  Created by Piyush Pandey on 15/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
			VStack {
				ProfileAndPostView()
				PostView()
			}
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
			HomeScreen()
    }
}
