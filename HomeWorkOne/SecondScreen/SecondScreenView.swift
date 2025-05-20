//
//  SecondScreenView.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import SwiftUI

struct SecondScreenView: View {

	// MARK: - Properties

	@EnvironmentObject var viewModel: SecondScreenViewModel

	// MARK: - Body

	var body: some View {
		NavigationView {
			List(viewModel.items) { item in
				NavigationLink(
					destination: SecondScreenDetailView(item: item),
					tag: item.id,
					selection: $viewModel.selectedItemId
				) {
					VStack(alignment: .leading) {
						Text(item.title)
							.font(.headline)
					}
					.padding(.vertical, 8)
				}
			}
			.navigationTitle("Второй экран")
		}
	}
}
