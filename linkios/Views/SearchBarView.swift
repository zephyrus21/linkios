//
//  SearchBarView.swift
//  linkios
//
//  Created by Piyush Pandey on 13/11/22.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
			HStack(alignment: .center) {
				Image("demo")
					.resizable()
					.edgesIgnoringSafeArea(.all)
					.aspectRatio(contentMode: .fit)
					.clipShape(Circle())
					.frame(width: 50, height: 40)
				
				RoundedRectangle(cornerRadius: 8)
					.foregroundColor(.blue.opacity(0.2))
					.frame(width: 270, height: 30)
					.overlay {
						HStack {
							Image(systemName: "magnifyingglass")
								.foregroundColor(.gray)
							Text("Search")
								.foregroundColor(.gray)
								.multilineTextAlignment(.leading)
								.font(.body)
							Spacer()
						}
						.padding()
					}
					Image(systemName: "ellipses.bubble.fill")
					.resizable()
					.foregroundColor(.gray)
					.aspectRatio(contentMode: .fit)
					.frame(width: 28, height: 28)
			}
			.padding(.top)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
