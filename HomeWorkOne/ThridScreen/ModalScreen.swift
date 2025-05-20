//
//  ModalScreen.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import SwiftUI

struct ModalScreen: View {

	// MARK: - Properties

	@Environment(\.presentationMode) var presentationMode

	// MARK: - Body

	var body: some View {
		VStack(spacing: 20) {
			Text("Модальное окно")
				.font(.title)

			UIKitLabel(text: "UIKit label", textColor: .systemRed, fontSize: 24)

			Button("Закрыть") {
				presentationMode.wrappedValue.dismiss()
			}
			.buttonStyle(RedButtonStyle())
		}
		.padding()
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color(.systemGroupedBackground))
	}
}

// MARK: - Styles

struct RedButtonStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.padding()
			.background(Color.red)
			.foregroundColor(.white)
			.cornerRadius(10)
			.scaleEffect(configuration.isPressed ? 0.95 : 1.0)
	}
}
