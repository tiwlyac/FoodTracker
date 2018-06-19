import UIKit

@IBDesignable
class RatingControl: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: - Private Methods
    private func setupButtons() {
        let button = UIButton()
        button.backgroundColor = .red
        
        //Add Contriant
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Add the button to the stack
        addArrangedSubview(button)
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), for: .touchUpInside)
        
    }
    
    @objc func ratingButtonTapped(_ sender: UIButton){
        print("Button pressed")
    }
}
