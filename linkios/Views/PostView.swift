//
//  PostView.swift
//  linkios
//
//  Created by Piyush Pandey on 15/11/22.
//

import SwiftUI

var postData: [PostData] = [
	.init(id: 0, title: "iNeuron", image: "0", followers: 4066, profileImage: "00"),
	.init(id: 1, title: "Learnyst", image: "1", followers: 2345, profileImage: "01"),
	.init(id: 2, title: "Synopsys inc", image: "2", followers: 1235, profileImage: "02"),
	.init(id: 3, title: "Skill-Lync", image: "3", followers: 908, profileImage: "03"),
	.init(id: 4, title: "Intel", image: "4" , followers: 1234, profileImage: "04"),
	.init(id: 5, title: "HP", image: "5", followers: 567, profileImage: "05"),
	.init(id: 6, title: "JungleWorks", image: "6", followers: 346, profileImage: "00")
		]

struct PostView: View {
	var body: some View {
		ScrollView(.vertical, showsIndicators: false){
			VStack(alignment: .leading) {
				ForEach(postData, id: \.id) {data in
					PostCardView(data: data)
					HStack(alignment: .center, spacing: 40) {
						ForEach(socialView, id: \.ids) { data in
							VStack{
								Image(systemName: data.image)
								Text("\(data.title)")
							}
							.foregroundColor(.black.opacity(0.8))
							.font(.subheadline)
						}.padding(.horizontal)
					}
				}
			}
		}
	}
}

struct PostView_Previews: PreviewProvider {
	static var previews: some View {
		PostView()
	}
}
