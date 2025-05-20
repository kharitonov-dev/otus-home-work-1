//
//  FirstScreenView.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import SwiftUI

struct FirstScreenView: View {

	// MARK: - Properties

	@EnvironmentObject var viewModel: FirstScreenViewModel
	@EnvironmentObject var secondScreenViewModel: SecondScreenViewModel
	@EnvironmentObject var tabViewModel: RootTabViewModel

	// MARK: - Body

	var body: some View {
		VStack(spacing: 30) {
			Text("Первый экран")
				.font(.title)

			Button("Перейти к 3 элементу на 2 табе") {
				let indexToSelect = 2
				if let item = viewModel.getItem(at: indexToSelect, from: secondScreenViewModel.items) {
					secondScreenViewModel.selectItem(item)
					tabViewModel.selectedTab = 1
				}
			}
			.buttonStyle(BlueButtonStyle())
		}
	}
}

// MARK: - Styles

struct BlueButtonStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.padding()
			.background(Color.blue)
			.foregroundColor(.white)
			.cornerRadius(10)
			.scaleEffect(configuration.isPressed ? 0.95 : 1.0)
	}
}
