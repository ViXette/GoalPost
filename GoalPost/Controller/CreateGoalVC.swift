import UIKit


class CreateGoalVC: UIViewController {

	@IBOutlet weak var goal_textView: UITextView!
	@IBOutlet weak var shortTerm_button: UIButton!
	@IBOutlet weak var longTerm_button: UIButton!
	@IBOutlet weak var next_button: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()

	}

	
	@IBAction func shortTermTapped(_ sender: UIButton) {
	}
	
	
	@IBAction func longTermTapped(_ sender: UIButton) {
	}
	
	
	@IBAction func nextTapped(_ sender: UIButton) {
	}
	
	
	@IBAction func backTapped(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
	
}
