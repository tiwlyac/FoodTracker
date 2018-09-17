
import UIKit

class Slip: UIView {
    
    
    @IBOutlet weak var fuckLabel: UILabel!
    
    func setLabel(_ value: String){
        fuckLabel.text = value
    }
    
    static func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: Slip.self)
        let nib = UINib(nibName: "Slip", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view.layoutSubviews()
        return view
    }
    
}
