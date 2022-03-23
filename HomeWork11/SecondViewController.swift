

import UIKit

class SecondViewController: UIViewController {
    
    let catToy = UIButton()
    var countBall = 0
    //MARK: - @IBOutlet
    
    @IBOutlet weak var countBallLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        catToy.addGradient(withColors: [.white, .red, .white])
        catToy.roundCorners(withRadius: 30)
        catToy.addShadow()
        countBallLabel.text = "Количество передвижения мячика: \(countBall)"
        view.addSubview(catToy)
    }
    //MARK: - Methods
    
    private func setupSubViews() {

        let viewSize = self.view.bounds
        let superViewHeight = viewSize.height
        let superViewWidth = viewSize.width

        catToy.frame = CGRect(x: superViewWidth / 2 - 30,
                              y: superViewHeight / 2 - 30,
                              width: 60,
                              height: 60)
        catToy.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    
    }

    @objc private func buttonClick(_sender: UIButton) {
        
        countBall += 1
        countBallLabel.text = "Количество передвижения мячика: \(countBall)"
        
        let viewSize = self.view.bounds
        let superViewHeight = viewSize.height
        let superViewWidth = viewSize.width
        let maxY = Int(superViewHeight) - 60
        let maxX = Int (superViewWidth) - 60

        catToy.frame = CGRect(x: Double (Int.random(in: 0...maxX - 50)),
                              y: Double (Int.random(in: 0...maxY - 50)),
                              width:60,
                              height: 60)
    }

}
  

