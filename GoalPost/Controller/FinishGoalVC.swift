//
//  Created by ViXette on 09/11/2017.
//

import UIKit
import CoreData


class FinishGoalVC: UIViewController, UITextFieldDelegate {

	@IBOutlet weak var createGoal_button: UIButton!
	@IBOutlet weak var points_textField: UITextField!
	
	var goalDescription: String!
	var goalType: GoalType!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		createGoal_button.bindToKeyboard()
		points_textField.delegate = self
	}
	
	
	func initData (goalDescription: String, goalType: GoalType) {
		self.goalDescription = goalDescription
		self.goalType = goalType
	}
	

	@IBAction func backTapped(_ sender: UIButton) {
		dismissDetail()
	}
	
	
	@IBAction func createGoalTapped(_ sender: UIButton) {
		if points_textField.text != nil {
			save {
				complete in
				
				if complete {
					dismiss(animated: true, completion: nil)
				}
			}
		}
	}
	
	
	func save (completion: (_ finished: Bool) -> ()) {
		guard let managedContext = appDelegate?.persistentContainer.viewContext
			else { return }
		
		let goal = Goal(context: managedContext)
		
		goal.goalDescription = goalDescription
		goal.goalType = goalType.rawValue
		goal.goalCompletionValue = Int32(points_textField.text!)!
		goal.goalProgress = Int32(0)
		
		do {
			try managedContext.save()
			
			completion(true)
		} catch {
			debugPrint("Could not save: \(error.localizedDescription)")
			
			completion(false)
		}
	}
	
}
