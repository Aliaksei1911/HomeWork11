

import UIKit

extension UIView {
 
    func roundCorners(withRadius radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.sublayers?.forEach {
            $0.cornerRadius = radius
        }
    }
    func makeRound() {
        let sideSize = min(self.frame.height, self.frame.width)
        roundCorners(withRadius: sideSize / 2)
    }
    
    func addGradient(withColors colors : [UIColor]) {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors.map{ $0.cgColor}
        gradient.cornerRadius = self.layer.cornerRadius
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func addShadow() {
        self.layer.shadowColor = UIColor.blue.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 7
    }
}
