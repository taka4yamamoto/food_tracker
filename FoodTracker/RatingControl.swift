import UIKit

class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()

    var rating = 0

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }

    //MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }


    //MARK: Private Methods
    private func setupButtons() {
        for _ in 0..<5 {
            let button = UIButton()
            button.backgroundColor = UIColor.red
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true

            button.addTarget(self, action: #selector(ratingButtonTapped(button:)), for: .touchUpInside)

            addArrangedSubview(button)
            ratingButtons.append(button)
        }
    }
}
