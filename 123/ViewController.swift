import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let view1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: CGFloat(0xFA)/255
            ,green: CGFloat(0xFA)/255
            ,blue: CGFloat(0xFA)/255
            ,alpha: 1.0)
        return view
    }()
    
    private let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    private let view22: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        
        return view
    }()
    
    private let view3: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    private let view4: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    private let view5: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    private let view6: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
        private let view61: UIView = {
            let view = UIView()
            view.backgroundColor = .gray
        
            return view
        }()
        private let view62: UIView = {
            let view = UIView()
            view.backgroundColor = .blue
        
            return view
        }()
        private let view63: UIView = {
            let view = UIView()
            view.backgroundColor = .purple
        
            return view
        }()
    
    
    private let view7: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: CGFloat(0xFA)/255
            ,green: CGFloat(0xFA)/255
            ,blue: CGFloat(0xFA)/255
            ,alpha: 1.0)
        return view
    }()
    
    //BUTTONS
    //view1 buttons
    private let backBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "back_button.png"), for: .normal)
        return btn
    }()
    
    private let trippleDotsBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tripple_dots.png"), for: .normal)
        return btn
    }()
    
    //view5 buttons
    private let gridBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "toolbar_item_1.png"), for: .normal)
        return btn
    }()
    
    private let lineBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "toolbar_item_2.png"), for: .normal)
        return btn
    }()
    
    private let notedBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "toolbar_item_3.png"), for: .normal)
        return btn
    }()
    
    //view1 buttons
    private let mainBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabbar_item_1.png"), for: .normal)
        return btn
    }()
    
    private let searchBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabbar_item_2.png"), for: .normal)
        return btn
    }()
    
    private let publishBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabbar_item_3.png"), for: .normal)
        return btn
    }()
    
    private let likesBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabbar_item_4.png"), for: .normal)
        return btn
    }()
    
    private let homeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabbar_item_5.png"), for: .normal)
        return btn
    }()
    
    // labels
    private let homeTopLabel: UILabel = {
        let nicknameLabel = UILabel()
        nicknameLabel.textAlignment = .center
        nicknameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nicknameLabel.text = "tawnysoul"
        return nicknameLabel
    }()
    
    private let aboutMeLabel: UILabel = {
        let infoLabel = UILabel()
        infoLabel.numberOfLines = 5
        infoLabel.font = UIFont.systemFont(ofSize: 16)
        infoLabel.text = " siberia, russia. novosibirsk\n          🎶🏂🏌️‍♂️\n soundcloud.com/tawnysoul/chillax-mix-ii\n Подписался(-ась) klim_vitalev\n ПОКАЗАТЬ ПЕРЕВОД"
        return infoLabel
    }()
    
    // images
    private let mainLogo: UIImageView = {
        let mainPic = UIImageView(image: UIImage(named: "main_logo.png"))
        return mainPic
    }()
    
    private let post1: UIImageView = {
        let pic1 = UIImageView(image: UIImage(named: "post_1.png"))
        return pic1
    }()
    
    private let post2: UIImageView = {
        let pic2 = UIImageView(image: UIImage(named: "post_2.png"))
        return pic2
    }()
    
    private let post3: UIImageView = {
        let pic3 = UIImageView(image: UIImage(named: "post_3.png"))
        return pic3
    }()
    
    
    private let publishButton = PublishButton(title: "Публикации", number: 1000)
    private let subscribersButton = SubscribersButton(title: "Подписчики", number: 500)
    private let washingtonButton = WashingtonButton(title: "Washington")
    
    //VIEWDIDLOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.view1)
        self.view.addSubview(self.view2)
        self.view2.addSubview(self.view22)
        self.view.addSubview(self.view3)
        self.view.addSubview(self.view4)
        self.view.addSubview(self.view5)
        self.view.addSubview(self.view6)
        self.view6.addSubview(self.view61)
        self.view6.addSubview(self.view62)
        self.view6.addSubview(self.view63)
        self.view.addSubview(self.view7)
        
        view1.addSubview(self.backBtn)
        view1.addSubview(self.trippleDotsBtn)
        view1.addSubview(self.homeTopLabel)
        
        view2.addSubview(self.mainLogo)
        
        view22.addSubview(self.publishButton)
        view22.addSubview(self.subscribersButton)
        
        view3.addSubview(self.aboutMeLabel)
        
        view4.addSubview(self.washingtonButton)
        
        view5.addSubview(self.gridBtn)
        view5.addSubview(self.lineBtn)
        view5.addSubview(self.notedBtn)
        
        view61.addSubview(self.post1)
        view62.addSubview(self.post2)
        view63.addSubview(self.post3)
        
        view7.addSubview(self.mainBtn)
        view7.addSubview(self.searchBtn)
        view7.addSubview(self.publishBtn)
        view7.addSubview(self.likesBtn)
        view7.addSubview(self.homeBtn)
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        let superview = super.view
        
        // VIEW 1 !!!!
        self.view1.snp.makeConstraints { (make) in
            make.top.equalTo(superview!.safeAreaLayoutGuide)
            make.width.equalTo(superview!.safeAreaLayoutGuide)
            make.height.equalTo(superview!.safeAreaLayoutGuide).multipliedBy(0.07)
        }
        // VIEW 2 !!!!
        self.view2.snp.makeConstraints { (make) in
            make.top.equalTo(self.view1.snp.bottom)
            make.width.equalTo(superview!).multipliedBy(0.35)
            make.bottom.equalTo(superview!).multipliedBy(0.3)
        }
        // VIEW 2(2) !!!!
        self.view22.snp.makeConstraints { (make) in
            make.top.equalTo(self.view1.snp.bottom)
            make.right.equalTo(superview!)
            make.width.equalTo(superview!).multipliedBy(0.65)
            make.bottom.equalTo(superview!).multipliedBy(0.3)
        }
        // VIEW 3 !!!!
        self.view3.snp.makeConstraints { (make) in
            make.top.equalTo(self.view2.snp.bottom)
            make.width.equalTo(superview!)
            make.bottom.equalTo(superview!).multipliedBy(0.5)
            }
        // VIEW 4 !!!!
        self.view4.snp.makeConstraints { (make) in
            make.top.equalTo(self.view3.snp.bottom)
            make.width.equalTo(superview!)
            make.bottom.equalTo(superview!).multipliedBy(0.65)
            }
        // VIEW 5 !!!!
        self.view5.snp.makeConstraints { (make) in
            make.top.equalTo(self.view4.snp.bottom)
            make.width.equalTo(superview!)
            make.bottom.equalTo(superview!).multipliedBy(0.72)
            }
        // VIEW 6 !!!!
        self.view6.snp.makeConstraints { (make) in
            make.top.equalTo(self.view5.snp.bottom)
            make.width.equalTo(superview!)
            make.bottom.equalTo(superview!).multipliedBy(0.93)
            }
            // VIEW 6(1) !!!!
            self.view61.snp.makeConstraints { (make) in
                make.top.equalTo(self.view5.snp.bottom)
                make.left.equalTo(superview!)
                make.width.equalTo(superview!).multipliedBy(0.33)
                make.bottom.equalTo(superview!).multipliedBy(0.93)
            }
            // VIEW 6(2) !!!!
            self.view62.snp.makeConstraints { (make) in
                make.top.equalTo(self.view5.snp.bottom)
                make.left.equalTo(self.view61.snp.right)
                make.right.equalTo(self.view63.snp.left)
                make.bottom.equalTo(superview!).multipliedBy(0.93)
            }
            // VIEW 6(3) !!!!
            self.view63.snp.makeConstraints { (make) in
                make.top.equalTo(self.view5.snp.bottom)
                make.right.equalTo(superview!)
                make.width.equalTo(superview!).multipliedBy(0.33)
                make.bottom.equalTo(superview!).multipliedBy(0.93)
            }
        // VIEW 7 !!!!
        self.view7.snp.makeConstraints { (make) in
            make.top.equalTo(self.view6.snp.bottom)
            make.width.equalTo(superview!.safeAreaLayoutGuide)
            make.bottom.equalTo(superview!.safeAreaLayoutGuide)
            }
        // VIEW 1 COMPONENTS
        // BUTTON_BACK
        self.backBtn.snp.makeConstraints{ (make) in
            make.topMargin.equalTo(view1.snp.topMargin)
            make.centerY.equalTo(view1.snp.centerY)
            make.leading.equalTo(view1.snp.leading).offset(10)
            make.size.equalTo(CGSize(width: 30, height: 25))
            }
        // BUTTON_TRIPPLE_DOTS
        self.trippleDotsBtn.snp.makeConstraints{ (make) in
            make.topMargin.equalTo(view1.snp.topMargin)
            make.centerY.equalTo(view1.snp.centerY)
            make.rightMargin.equalTo(view1.snp.rightMargin).offset(-10)
            make.size.equalTo(CGSize(width: 30, height: 15))
            }
        // label tawnysoul
        self.homeTopLabel.snp.makeConstraints{ (make) in
            make.topMargin.equalTo(view1.snp.topMargin)
            make.centerX.equalTo(view1.snp.centerX)
            make.centerY.equalTo(view1.snp.centerY)
            }
        // VIEW 2 COMPONENTS
        // image tawnysoul
        self.mainLogo.snp.makeConstraints{ (make) in
            make.top.edges.equalTo(self.view2).inset(UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
            }
        // VIEW 3 COMPONENTS
        //lavel v3_1
        self.aboutMeLabel.snp.makeConstraints{ (make) in
            make.centerY.equalTo(self.view3.snp.centerY)
            }
        // VIEW 5 COMPONENTS
        //button v5_1
            self.gridBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view5.snp.top)
                make.centerY.equalTo(view5.snp.centerY)
                make.centerX.equalTo(view61.snp.centerX)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
        //button v5_2
            self.lineBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view5.snp.top)
                make.centerY.equalTo(view5.snp.centerY)
                make.centerX.equalTo(view62.snp.centerX)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
        //button v5_3
            self.notedBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view5.snp.top)
                make.centerY.equalTo(view5.snp.centerY)
                make.centerX.equalTo(view63.snp.centerX)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
        // VIEW 6 COMPONENTS
        //post_1
        self.post1.snp.makeConstraints{ (make) in
            make.top.edges.equalTo(self.view61)
            }
        //post_2
        self.post2.snp.makeConstraints{ (make) in
            make.top.edges.equalTo(self.view62)
            }
        //post_3
        self.post3.snp.makeConstraints{ (make) in
            make.top.edges.equalTo(self.view63)
            }
        // VIEW 7 COMPONENTS
        //button v7_1
            self.mainBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view7.snp.top)
                make.centerY.equalTo(view7.snp.centerY)
                make.centerX.equalTo(view7.snp.centerX).multipliedBy(0.25)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
        //button v7_2
            self.searchBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view7.snp.top)
                make.centerY.equalTo(view7.snp.centerY)
                make.centerX.equalTo(view7.snp.centerX).multipliedBy(0.63)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
        //button v7_3
            self.publishBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view7.snp.top)
                make.centerY.equalTo(view7.snp.centerY)
                make.centerX.equalTo(view7.snp.centerX)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
        //button v7_4
            self.likesBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view7.snp.top)
                make.centerY.equalTo(view7.snp.centerY)
                make.centerX.equalTo(view7.snp.centerX).multipliedBy(1.37)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
        //button v7_5
            self.homeBtn.snp.makeConstraints{ (make) in
                make.top.equalTo(view7.snp.top)
                make.centerY.equalTo(view7.snp.centerY)
                make.centerX.equalTo(view7.snp.centerX).multipliedBy(1.75)
                make.size.equalTo(CGSize(width: 35, height: 30))
            }
    }



// класс публикации с цифрой
final class PublishButton: UIButton {

    private let number = UILabel()
    private let title = UILabel()
    
    override var isHighlighted: Bool {
        didSet {
            let alpha: CGFloat = self.isHighlighted ? 0.3 : 1 //не работает. как починить?
            self.number.alpha = alpha
            self.title.alpha = alpha
        }
    }

    init(title: String, number: Int) {
        super.init(frame: .zero)

        self.number.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        self.number.text = "\(number)"
        self.number.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(self.number)
        self.number.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
            make.width.lessThanOrEqualToSuperview().priority(.medium)
        }

        self.title.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        self.title.text = title
        self.title.font = UIFont.systemFont(ofSize: 10)
        self.addSubview(self.title)
        self.title.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-5)
            make.centerX.equalToSuperview()
            make.width.lessThanOrEqualToSuperview().priority(.medium)
        }

        self.snp.makeConstraints { $0.size.equalTo(CGSize(width: 80, height: 40)) }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//класс подписчики с цифрой
final class SubscribersButton: UIButton {
    
    private let number = UILabel()
    private let title = UILabel()
    
    override var isHighlighted: Bool {
        didSet {
            let alpha: CGFloat = self.isHighlighted ? 0.3 : 1
            self.number.alpha = alpha
            self.title.alpha = alpha
        }
    }
    
    init(title: String, number: Int) {
        super.init(frame: .zero)
        
        self.number.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        self.number.text = "\(number)"
        self.number.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(self.number)
        self.number.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.right.equalToSuperview()
            make.width.lessThanOrEqualToSuperview().priority(.medium)
        }
        
        self.title.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        self.title.text = title
        self.title.font = UIFont.systemFont(ofSize: 10)
        self.addSubview(self.title)
        self.title.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-5)
            make.centerX.equalToSuperview().offset(100) // как сделать без оффсет. хочу с помощью мултиплай (0.3) разбить на три части серую вьюшку(view22). и в каждую из частей вставить публикации, подписчики, подписки соответсвенно.
            make.width.lessThanOrEqualToSuperview().priority(.medium)
        }
        
        self.snp.makeConstraints { $0.size.equalTo(CGSize(width: 150, height: 40))} //что такое $0?хочу чтобы размеры были такие же как серая вьюшка (view22), или хотя бы ширина.† }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

    // класс стори washington
    final class WashingtonButton: UIButton {
    
    private let image = UIImageView(image: UIImage(named: "story_1.png"))
    private let title = UILabel()
    
    override var isHighlighted: Bool {
        didSet {
            let alpha: CGFloat = self.isHighlighted ? 0.3 : 1
            self.image.alpha = alpha
            self.title.alpha = alpha
        }
    }
    
    init(title: String) {
        super.init(frame: .zero)
        
        self.image.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        self.addSubview(self.image)
        self.image.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview().offset(-4)
            make.left.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
            make.width.lessThanOrEqualToSuperview().priority(.medium)
        }
        
        self.title.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        self.title.text = title
        self.title.font = UIFont.systemFont(ofSize: 12)
        self.addSubview(self.title)
        self.title.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
            
            make.width.lessThanOrEqualToSuperview().priority(.medium)
        }
        
        self.snp.makeConstraints { $0.size.equalTo(CGSize(width: 80, height: 80)) }
    }
        
        required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        }
    }
}
