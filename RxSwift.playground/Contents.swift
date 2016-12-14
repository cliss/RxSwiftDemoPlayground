//: Please build the scheme 'RxSwiftPlayground' first
import PlaygroundSupport
import UIKit

class IncrementViewController: UIViewController {
    private var count = 0
    private var label: UILabel?
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(
            x: 140.0,
            y: 100.0,
            width: 100.0,
            height: 44.0)
        button.addTarget(self, action: #selector(onButtonTap(sender:)), for: .touchUpInside)
        button.setTitle("Tap me!", for: .normal)
        self.view.addSubview(button)
        
        let labelFrame = CGRect(
            x: 80.0,
            y: 500.0,
            width: 400.0,
            height: 44.0)
        let label = UILabel(frame: labelFrame)
        label.text = "You have tapped \(self.count) times."
        self.label = label
        self.view.addSubview(label)
    }
    
    @objc private func onButtonTap(sender: UIButton) {
        self.count += 1
        self.label?.text = "You have tapped \(self.count) times."
    }
}

let vc = IncrementViewController()
PlaygroundPage.current.liveView = vc
