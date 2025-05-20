//
//  SecondScreenDetailView.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import SwiftUI

struct SecondScreenDetailView: View {

	// MARK: - Properties

	let item: ItemModel

	// MARK: - Body

	var body: some View {
		VStack(spacing: 20) {
			Text(item.title)
				.font(.largeTitle)
			Spacer()
		}
		.padding()
		.navigationTitle(item.title)
		.navigationBarTitleDisplayMode(.inline)
	}
}
