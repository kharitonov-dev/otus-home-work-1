//
//  UIKitLabel.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import SwiftUI

struct UIKitLabel: UIViewRepresentable {

	// MARK: - Properties

	var text: String
	var textColor: UIColor = .black
	var fontSize: CGFloat = 17

	// MARK: - Functions

	func makeUIView(context: Context) -> UILabel {
		let label = UILabel()
		label.text = text
		label.textColor = textColor
		label.font = .systemFont(ofSize: fontSize)
		label.textAlignment = .center
		label.numberOfLines = 0
		return label
	}

	func updateUIView(_ uiView: UILabel, context: Context) {
		uiView.text = text
	}
}
