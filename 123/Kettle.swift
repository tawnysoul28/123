import UIKit

protocol KettleDelegate: AnyObject {
	func getVolts() -> Int
}

protocol ILiquid {
	var title: String { get }
	var isLiquid: Bool { get }
}

class Kettle {

	weak var delegate: KettleDelegate? = nil

	func boil(of water: ILiquid) {
		if water.isLiquid {
			self.privateBoil(water: water)
		}
	}

	private func privateBoil(water: ILiquid) {
		if let delegate = self.delegate, delegate.getVolts() > 0 {
			print("Boiled: \(water.title) by \(delegate.getVolts()) volts")
		} else {
			assertionFailure(">>> Not boiled 😔, because delegate isn't set")
		}
	}

}
