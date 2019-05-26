import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.label.text = "Hello!"
        self.label.font = .boldSystemFont(ofSize: 24)
        
        self.view.addSubview(self.label)
        
        self.label.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.topMargin)
            make.centerX.equalToSuperview()
        }
    }


}

