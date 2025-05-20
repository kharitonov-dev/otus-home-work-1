//
//  ThridScreenView.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import SwiftUI

struct ThridScreenView: View {

	// MARK: - Properties

	@ObservedObject var viewModel: ThridScreenViewModel

	// MARK: - Body

	var body: some View {
		VStack(spacing: 30) {
			Text("Третий экран")
				.font(.title)

			Button("Показать модальное окно") {
				viewModel.isModalPresented.toggle()
			}
			.buttonStyle(GreenButtonStyle())
		}
		.sheet(isPresented: $viewModel.isModalPresented) {
			ModalScreen()
		}
	}
}

// MARK: - Styles

struct GreenButtonStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.padding()
			.background(Color.green)
			.foregroundColor(.white)
			.cornerRadius(10)
			.scaleEffect(configuration.isPressed ? 0.95 : 1.0)
	}
}
