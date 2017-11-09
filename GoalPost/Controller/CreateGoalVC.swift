import UIKit


class CreateGoalVC: UIViewController, UITextViewDelegate {

	@IBOutlet weak var goal_textView: UITextView!
	@IBOutlet weak var shortTerm_button: UIButton!
	@IBOutlet weak var longTerm_button: UIButton!
	@IBOutlet weak var next_button: UIButton!
	
	var goalType: GoalType = .shortTerm
	
	override func viewDidLoad() {
		super.viewDidLoad()

		next_button.bindToKeyboard()
		
		shortTerm_button.setSelectedColor()
		longTerm_button.setDeselectedColor()
		
		goal_textView.delegate = self
	}

	
	@IBAction func shortTermTapped(_ sender: UIButton) {
		goalType = .shortTerm
		
		shortTerm_button.setSelectedColor()
		longTerm_button.setDeselectedColor()
	}
	
	
	@IBAction func longTermTapped(_ sender: UIButton) {
		goalType = .longTerm
		
		shortTerm_button.setDeselectedColor()
		longTerm_button.setSelectedColor()
	}
	
	
	@IBAction func nextTapped(_ sender: UIButton) {
		if goal_textView.text != "" && goal_textView.text != "What is your Goal?" {
			guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
			
			finishGoalVC.initData(goalDescription: goal_textView.text, goalType: goalType)

			presentDetail(finishGoalVC)
		}
	}
	

	func textViewDidBeginEditing(_ textView: UITextView) {
		textView.text = ""
		textView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
	}
	
	
	@IBAction func backTapped(_ sender: UIButton) {
		dismissDetail()
	}
	
}
