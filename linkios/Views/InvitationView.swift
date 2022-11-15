//
//  InvitationView.swift
//  linkios
//
//  Created by Piyush Pandey on 15/11/22.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Piyush Pandey", position: "SDE at AsteriDev", mutual: 12, image: "01")

struct InvitationView: View {
	var Data: NetworkModel
    var body: some View {
			HStack(alignment: .center, spacing: 10) {
				Image(Data.image)
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 70, height: 70, alignment: .leading)
					.clipShape(Circle())
				
				VStack(alignment: .leading) {
					Text(Data.name)
					Text(Data.position)
						.font(.subheadline)
						.foregroundColor(.gray)
					Text("\(Data.mutual) mutual connections")
						.font(.caption)
						.foregroundColor(.gray)
				}.frame(width: 150, height: 30, alignment: .leading)
				
				HStack {
					Image(systemName: "multiply.circle")
						.font(.system(size: 30))
						.foregroundColor(.gray)
					Image(systemName: "checkmark.circle")
						.font(.system(size: 30))
						.foregroundColor(.blue)
				}.padding(.horizontal)
			}.frame(width: .infinity, height: .infinity)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
			InvitationView(Data: sampleData)
    }
}
