import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	static private let kCellIdentifier = "myCellIdentifier"
	static private let kBlueCellIdentifier = "myBlueCellIdentifier"

	private let tableView = UITableView(frame: .zero, style: .plain)
	private let items = ["123", "213", "456", "qwe"]

    override func viewDidLoad() {
        super.viewDidLoad()

		self.view.addSubview(self.tableView)
		self.tableView.backgroundColor = .gray
		self.tableView.snp.makeConstraints { make in make.edges.equalToSuperview() }

		self.tableView.dataSource = self
		self.tableView.delegate = self

		self.tableView.register(UITableViewCell.self,
								forCellReuseIdentifier: ViewController.kCellIdentifier)
		self.tableView.register(BlueCell.self,
								forCellReuseIdentifier: ViewController.kBlueCellIdentifier)
    }

	// MARK: UITableViewDataSource

	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.items.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let identifier = indexPath.row % 2 == 0
			? ViewController.kCellIdentifier
			: ViewController.kBlueCellIdentifier
		let cell = tableView.dequeueReusableCell(withIdentifier: identifier,
												 for: indexPath)
		let title = self.items[indexPath.row]
		cell.textLabel?.text = title
		return cell
	}

	// MARK: UITableViewDelegate

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)

		let item = self.items[indexPath.row]
		print(">>> touched: \(item)")
	}

}
