//
//  RootTabView.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 19.05.2025.
//

import SwiftUI

struct RootTabView: View {

	// MARK: - Private properties

	@StateObject private var viewModel = RootTabViewModel()
	@StateObject private var firstScreenViewModel = FirstScreenViewModel()
	@StateObject private var secondScreenViewModel = SecondScreenViewModel()
	@StateObject private var thridScreenViewModel = ThridScreenViewModel()

	// MARK: - Body

	var body: some View {
		TabView(selection: $viewModel.selectedTab) {
			FirstScreenView()
				.environmentObject(viewModel)
				.environmentObject(firstScreenViewModel)
				.environmentObject(secondScreenViewModel)
				.tabItem {
					Label("Первый", systemImage: "1.circle")
				}
				.tag(0)

			SecondScreenView()
				.environmentObject(secondScreenViewModel)
				.tabItem {
					Label("Второй", systemImage: "2.circle")
				}
				.tag(1)

			ThridScreenView(viewModel: thridScreenViewModel)
				.tabItem {
					Label("Третий", systemImage: "3.circle")
				}
				.tag(2)
		}
	}
}

// MARK: - Previews

#if DEBUG
struct RootTabView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			RootTabView()

			// Landscape orientation

			RootTabView()
				.previewInterfaceOrientation(.landscapeLeft)
		}
	}
}
#endif
