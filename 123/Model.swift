import UIKit

class Model {

	private let data = ["213", "123", "456", "qwe"]
	private let modifiedData: [String]

	init() {
		self.modifiedData = self.data.map { return $0.modify(with: "+ ") }
	}

	func itemsCount() -> Int {
		return self.data.count
	}

	func item(at indexPath: IndexPath) -> String {
		return self.data[indexPath.row]
	}

}
