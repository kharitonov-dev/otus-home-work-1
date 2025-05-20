//
//  SecondScreenViewModel.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import Foundation

final class SecondScreenViewModel: ObservableObject {

	// MARK: - Properties

	@Published var selectedItemId: UUID?
	@Published var items: [ItemModel] = [
		ItemModel(title: "Item 1"),
		ItemModel(title: "Item 2"),
		ItemModel(title: "Item 3"),
		ItemModel(title: "Item 4"),
		ItemModel(title: "Item 5")
	]

	// MARK: - Functions

	func selectItem(_ item: ItemModel) {
		selectedItemId = item.id
	}
}
