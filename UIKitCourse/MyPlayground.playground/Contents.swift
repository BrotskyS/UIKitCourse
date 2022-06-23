//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let cardView = UIView()
        cardView.frame =  CGRect(x: 20, y: 20, width: 300, height: 250)
        cardView.backgroundColor = .blue
        cardView.layer.cornerRadius = 30
        cardView.layer.cornerCurve = .continuous
        
        
        // add shadow
        
        cardView.layer.shadowColor = UIColor.blue.cgColor
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10
        
        view.addSubview(cardView)
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
