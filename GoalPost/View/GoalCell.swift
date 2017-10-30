import UIKit


class GoalCell: UITableViewCell {

	@IBOutlet weak var goalDescription_label: UILabel!
	@IBOutlet weak var goalType_label: UILabel!
	@IBOutlet weak var goalProgress_label: UILabel!

	
	func configureCell (goalDescription: String, goalType: GoalType, goalProgress: Int) {
		goalDescription_label.text = goalDescription
		goalType_label.text = goalType.rawValue
		goalProgress_label.text = "\(goalProgress)"
	}
	
}
