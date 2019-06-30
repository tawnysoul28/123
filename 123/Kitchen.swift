public class Kitchen: KettleDelegate {

	private let kettle = Kettle()
	private var products: [ILiquid] = []

	init() {
		self.createProducts()

		self.kettle.delegate = self
	}

	public func boilAllProducts() {
		self.products.forEach {
			self.kettle.boil(of: $0)
		}
	}

	private func createProducts() {
		self.products = [
			Potato(),
			Milk(),
			Potato(),
			Milk(),
			Milk(),
		]
	}

	// MARK: KettleDelegate
	func getVolts() -> Int {
		return 220
	}

}

class Potato: ILiquid {
	var title: String { return "Potato" }
	var isLiquid: Bool { return false }
}

class Milk: ILiquid {
	var title: String { return "Milk" }
	var isLiquid: Bool { return true }
}
