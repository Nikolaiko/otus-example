import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var unicronImage: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onButtonShowClick() {
        if exampleFlag {
            actionButton.tintColor = UIColor.yellow
            actionButton.setTitle("Уверены?!#@@#", for: .normal)
        } else {
            actionButton.tintColor = UIColor.red
            actionButton.setTitle("Уверены?", for: .normal)
        }

        actionButton.setTitle("Уверены?", for: .highlighted)

        actionButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(secondClick)))
    }

    @objc
    func secondClick() {
        unicronImage.isHidden = false
    }
}

