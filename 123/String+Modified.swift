import Foundation

extension String {

	var modified: String { return "+ " + self }

	func modify(with string: String) -> String {
		return string + self
	}

}
