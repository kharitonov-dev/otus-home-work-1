//
//  FirstScreenViewModel.swift
//  HomeWorkOne
//
//  Created by Харитонов Тимофей on 20.05.2025.
//

import Foundation

final class FirstScreenViewModel: ObservableObject {

	// MARK: - Functions

	func getItem(at index: Int, from items: [ItemModel]) -> ItemModel? {
		guard items.indices.contains(index) else { return nil }
		return items[index]
	}
}
