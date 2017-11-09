//
//  Created by ViXette on 09/11/2017.
//

import UIKit


class FinishGoalVC: UIViewController {

	@IBOutlet weak var createGoal_button: UIButton!
	@IBOutlet weak var points_textField: UITextField!
	
	var goalDescription: String!
	var goalType: GoalType!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		createGoal_button.bindToKeyboard()

	}
	
	
	func initData (goalDescription: String, goalType: GoalType) {
		self.goalDescription = goalDescription
		self.goalType = goalType
	}
	

	@IBAction func backTapped(_ sender: UIButton) {
		dismissDetail()
	}
	
	
	@IBAction func createGoalTapped(_ sender: UIButton) {
	}
	
}
